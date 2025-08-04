//
//  BlazeWidgetBase.swift
//  Runner
//
//  Created by Reuven Levitsky on 14/12/2023.
//

import Foundation
import BlazeSDK
import Flutter

class BlazeWidgetBase: NSObject, FlutterPlatformView {
    
    struct Constants {
        static let resizeThrottleTime: TimeInterval = 0.005
    }
    
    struct ChannelConstants {
        static let reloadDataMessageName = "reloadData"
        static let updateDataSourceMessageName = "updateDataSource"
        static let playMessageName = "play"
        static let updateWidgetsUiMessageName = "updateWidgetsUi"
        static let updateOverrideStylesMessageName = "updateOverrideStyles"
    }
    
    let creationParams: [String : AnyHashable]
    
    var isEmbeddedInScrollView: Bool {
        get {
            return creationParams["isEmbeddedInScrollView"] as? Bool ?? false
        }
    }
    
    var cachingLevel: BlazeCachePolicyLevel? {
        get {
            guard let levelString = creationParams["cachingLevel"] as? String else { return nil }
            return levelString.asCachingLevel
        }
    }
    
    var presetWidgetLayout: String? {
        get {
            return creationParams["presetWidgetLayout"] as? String
        }
    }
    
    var customWidgetLayoutMap: [String: AnyHashable]? {
        get {
            return creationParams["blazeWidgetLayout"] as? [String: AnyHashable]
        }
    }
    
    var shouldOrderWidgetByReadStatus: Bool {
        get {
            return creationParams["shouldOrderWidgetByReadStatus"] as? Bool ?? true
        }
    }
    
    var playerStyleMap: [String: AnyHashable]? {
        get {
            return creationParams["playerStyle"] as? [String: AnyHashable]
        }
    }

    var perItemStyleOverridesMap: [String: AnyHashable]? {
        get {
            return creationParams["perItemStyleOverrides"] as? [String: AnyHashable]
        }
    }
    
    var appOverridesCTAHandling: Bool {
        get {
            return creationParams["appOverridesCTAHandling"] as? Bool ?? false
        }
    }
    
    // Override this property if you want to disable content inset adjustment behavior.
    // This is critical - in Flutter PlatformViews are embeded inside a ScrollView and widgets may be shrinked by the status bar.
    // Grids already handling this in the sdk.
    var shouldForceContentInsetAdjustmentBehaviorNever: Bool {
        return false
    }

    lazy var widgetView: BlazeWidgetView = {
        return createWidget()
    }()
    
    lazy var widgetContainer: UIView = {
        let view = UIView()
        view.insetsLayoutMarginsFromSafeArea = false
        view.backgroundColor = .clear
        view.clipsToBounds = true
        return view
    }()
    
    private var resizeThrottler: Throttler = .init(minimumDelay: Constants.resizeThrottleTime)
    private var resizeObservation: NSKeyValueObservation?
    
    var methodChannel: FlutterMethodChannel!
    
    // Shared delegate handler for code reuse
    private lazy var sharedDelegateHandler: BlazeSharedDelegateHandler = {
        return BlazeSharedDelegateHandler()
    }()
    
    lazy var delegate: BlazeWidgetDelegate = .init(
        
        onDataLoadStarted: { [weak self] params in
            self?.onDataLoadStarted(playerType: params.playerType,
                                    sourceId: params.sourceId)
        },
        
        onDataLoadComplete: { [weak self] params in
            self?.onDataLoadComplete(playerType: params.playerType,
                                     sourceId: params.sourceId,
                                     itemsCount: params.itemsCount,
                                     result: params.result)
        },
        
        onPlayerDidAppear: { [weak self] params in
            self?.onPlayerDidAppear(playerType: params.playerType,
                                    sourceId: params.sourceId)
        },
        
        onPlayerDidDismiss: { [weak self] params in
            self?.onPlayerDidDismiss(playerType: params.playerType,
                                     sourceId: params.sourceId)
        },
        
        onTriggerCTA: { [weak self] params in
            self?.onTriggerCTA(playerType: params.playerType,
                               sourceId: params.sourceId,
                               actionType: params.actionType,
                               actionParam: params.actionParam) ?? false
        },
        
        onTriggerPlayerBodyTextLink: { [weak self] params in
            self?.onTriggerPlayerBodyTextLink(playerType: params.playerType,
                                              sourceId: params.sourceId,
                                              actionParam: params.actionParam) ?? .deeplink
        },
        
        onPlayerEventTriggered: { [weak self] params in
            self?.onPlayerEventTriggered(playerType: params.playerType,
                                         sourceId: params.sourceId,
                                         event: params.event)
        },
        
        onWidgetItemClicked: { [weak self] params in
            self?.onWidgetItemClicked(widgetId: params.widgetId,
                                      widgetItemId: params.widgetItemId,
                                      widgetItemTitle: params.widgetItemTitle)
        }
        
    )
    
    init(frame: CGRect,
         viewIdentifier viewId: Int64,
         arguments args: Any?,
         binaryMessenger messenger: FlutterBinaryMessenger?) {
        
        self.creationParams = args as? [String : AnyHashable] ?? [:]
        
        super.init()
        
        guard let widgetId = creationParams["widgetId"] as? String,
              let messenger = messenger else {
            // Invalid creation params.
            print("Invalid widget creation params: \(String(describing: args))")
            return
        }
        
        setupMethodChannel(widgetId: widgetId,
                           messenger: messenger)
        
        initWidget(widgetId: widgetId)
    }

    func view() -> UIView {
        return widgetContainer
    }
    
    private func setupMethodChannel(widgetId: String,
                                    messenger: FlutterBinaryMessenger) {
        methodChannel = FlutterMethodChannel(name: "blaze-widget-\(widgetId)",
                                             binaryMessenger: messenger)
        methodChannel.setMethodCallHandler { [weak self] call, result in
            guard let self = self else { return }
            
            switch call.method {
            case ChannelConstants.reloadDataMessageName:
                self.reloadData(call: call)
            case ChannelConstants.updateDataSourceMessageName:
                self.updateDataSource(call: call)
            case ChannelConstants.playMessageName:
                self.play()
            case ChannelConstants.updateWidgetsUiMessageName:
                self.updateWidgetsUi()
            case ChannelConstants.updateOverrideStylesMessageName:
                self.updateOverrideStyles(call: call)
            default:
                break
            }
        }
    }
    
    func initWidget(widgetId: String) {
        // Parse the data source from creation params
        guard let dataSourceRaw = creationParams["dataSource"] as? [String: AnyHashable],
            let dataSource = dataSourceRaw.toBlazeDataSourceType else {
            // Failed to parse data source.
            return
        }
        
        addWidgetToContainer()
        
        widgetView.widgetIdentifier = widgetId
        widgetView.widgetDelegate = delegate
        
        widgetView.dataSourceType = dataSource
        
        // Set caching level if provided
        if let cachingLevel = cachingLevel {
            widgetView.cachePolicyLevel = cachingLevel
        }
        
        // Set shouldOrderWidgetByReadStatus
        widgetView.shouldOrderWidgetByReadStatus = shouldOrderWidgetByReadStatus
        
        setupWidgetLayout()
        widgetView.reloadLayout()
        
        widgetView.isEmbededInScrollView = isEmbeddedInScrollView
        
        if shouldForceContentInsetAdjustmentBehaviorNever {
            widgetView.disableContentInsetAdjustmentBehaviorRecursively()
        }
        
        widgetView.reloadData(progressType: .skeleton)
        
        registerForSizeChangeIfNeeded()
    }
    
    func addWidgetToContainer() {
        widgetView.translatesAutoresizingMaskIntoConstraints = false
        widgetContainer.addSubview(widgetView)
        NSLayoutConstraint.activate([
            widgetView.leadingAnchor.constraint(equalTo: widgetContainer.leadingAnchor),
            widgetView.trailingAnchor.constraint(equalTo: widgetContainer.trailingAnchor),
            widgetView.topAnchor.constraint(equalTo: widgetContainer.topAnchor)
        ])
        
        if isEmbeddedInScrollView == false {
            widgetView.bottomAnchor.constraint(equalTo: widgetContainer.bottomAnchor).isActive = true
        }
    }
    
    func registerForSizeChangeIfNeeded() {
        // Invalidate previous observation if exists.
        resizeObservation = nil
        
        guard isEmbeddedInScrollView else {
            return
        }
        
        // Fix layout bugs of widgets with flex height defined - happens for both row and grid widgets.
        resizeObservation = widgetView.observe(
            \.bounds,
             options: [.old, .new]
        ) { [weak self] object, change in
            if change.newValue != change.oldValue {
                self?.updateWidgetSize(newSize: change.newValue?.size)
            }
        }
    }
    
    func reloadData(call: FlutterMethodCall) {
        let args = call.arguments as? [String: Any]
        let isSilentRefresh = args?["isSilentRefresh"] as? Bool ?? false
        widgetView.reloadData(progressType: isSilentRefresh ? .silent : .skeleton)
    }

    func updateDataSource(call: FlutterMethodCall) {
        guard let args = call.arguments as? [String: Any],
              let dataSourceMap = args["dataSource"] as? [String: AnyHashable] else {
            return
        }
        
        let isSilentRefresh = args["isSilentRefresh"] as? Bool ?? false
        
        guard let newDataSource = dataSourceMap.toBlazeDataSourceType else {
            return
        }
        widgetView.dataSourceType = newDataSource
        widgetView.reloadData(progressType: isSilentRefresh ? .silent : .skeleton)
    }

    func play() {
        widgetView.play()
    }

    func updateWidgetsUi() {
        widgetView.updateWidgetsUI()
    }
    
    func updateOverrideStyles(call: FlutterMethodCall) {
        guard let args = call.arguments as? [String: Any],
              let perItemStyleOverridesRaw = args["perItemStyleOverrides"] as? [String: AnyHashable],
              let shouldUpdateUi = args["shouldUpdateUi"] as? Bool else {
            return
        }
        
        // Convert the simple key:value format to native overrides
        if let customizationMap = convertPerItemStyleOverrides(perItemStyleOverridesRaw), !customizationMap.isEmpty {
            widgetView.updateOverrideStyles(stylesPerItem: customizationMap, shouldUpdateUI: shouldUpdateUi)
        }
    }
    
    func convertPerItemStyleOverrides(_ perItemStyleOverridesRaw: [String: AnyHashable]) -> [BlazeSDK.BlazeWidgetItemCustomMapping: BlazeSDK.BlazeWidgetItemStyleOverrides]? {
        
        guard let customizationReactMap = perItemStyleOverridesRaw.toReactWidgetStylesOverridesMap else {
            return nil
        }

        // Convert React Native styles to native styles and merge them
        let customizationMap = customizationReactMap.compactMap { (key, reactOverrides) -> (BlazeSDK.BlazeWidgetItemCustomMapping, BlazeSDK.BlazeWidgetItemStyleOverrides)? in
            
            // Convert React key and value to native equivalents
            let nativeMapping = BlazeSDK.BlazeWidgetItemCustomMapping(key: key.key, value: key.value)
            
            var nativeOverrides = BlazeSDK.BlazeWidgetItemStyleOverrides(
                statusIndicator: widgetView.layout.widgetItemStyle.statusIndicator,
                imageBorder: widgetView.layout.widgetItemStyle.image.border,
                badge: widgetView.layout.widgetItemStyle.badge
            )
            
            // Merging the native values with the React overrides
            nativeOverrides = nativeOverrides.mergedWith(reactOverrides)
            
            return (nativeMapping, nativeOverrides)
        }

        // Convert tuple array to dictionary if not empty
        if !customizationMap.isEmpty {
            return Dictionary(uniqueKeysWithValues: customizationMap)
        } else {
            return nil
        }
    }
    
    func setupWidgetLayout() {
        let layout = parseLayout(from: presetWidgetLayout)
        
        var finalLayout = layout
        
        // Apply custom widget layout if provided
        if let customLayoutMap = customWidgetLayoutMap {
            finalLayout = layout.mergedWith(customLayoutMap.toBlazeReactWidgetLayout())
        }
        
        widgetView.layout = finalLayout
        
        // Apply per-item style overrides if provided during initialization
        if let perItemStyleOverridesRaw = perItemStyleOverridesMap,
           let customizationMap = convertPerItemStyleOverrides(perItemStyleOverridesRaw),
           !customizationMap.isEmpty {
            widgetView.perItemStyleOverrides = customizationMap
        }
    }
    
    func createWidget() -> BlazeWidgetView {
        fatalError("Subclasses must implement")
    }
    
    func parseLayout(from presetTheme: String?) -> BlazeWidgetLayout {
        fatalError("Subclasses must implement")
    }
    
    /// This function changes the view's height dynamically and foces it to layout with the right size.
    /// Without this embedded grids won't resize properly.
    ///
    /// - Parameter newSize: the new measured size of the widget.
    private func updateWidgetSize(newSize: CGSize?) {
        guard let newSize else { return }
                
        // We use throttling because widgets are first empty before shimmer is showing very fast, and it causes glitches.
        resizeThrottler.throttle { [weak self] in
            guard let self else { return }
            
            self.methodChannel.invokeMethod("updateHeight", arguments: [
                "height" : newSize.height
            ])
        }
        
    }
    
}

extension BlazeWidgetBase {
    
    func onDataLoadStarted(playerType: BlazePlayerType, sourceId: String?) {
        sharedDelegateHandler.onDataLoadStarted(
            playerType: playerType,
            sourceId: sourceId
        ) { [weak self] params in
            self?.methodChannel.invokeMethod(methodName: "onDataLoadStarted", encodable: params)
        }
    }
    
    func onDataLoadComplete(playerType: BlazePlayerType,
                            sourceId: String?,
                            itemsCount: Int,
                            result: BlazeResult) {
        sharedDelegateHandler.onDataLoadComplete(
            playerType: playerType,
            sourceId: sourceId,
            itemsCount: itemsCount,
            result: result
        ) { [weak self] params in
            self?.methodChannel.invokeMethod(methodName: "onDataLoadComplete", encodable: params)
        }
    }
    
    func onPlayerDidAppear(playerType: BlazePlayerType, sourceId: String?) {
        sharedDelegateHandler.onPlayerDidAppear(
            playerType: playerType,
            sourceId: sourceId
        ) { [weak self] params in
            self?.methodChannel.invokeMethod(methodName: "onPlayerDidAppear", encodable: params)
        }
    }
    
    func onPlayerDidDismiss(playerType: BlazePlayerType, sourceId: String?) {
        sharedDelegateHandler.onPlayerDidDismiss(
            playerType: playerType,
            sourceId: sourceId
        ) { [weak self] params in
            self?.methodChannel.invokeMethod(methodName: "onPlayerDidDismiss", encodable: params)
        }
    }
    
    func onWidgetItemClicked(widgetId: String, widgetItemId: String, widgetItemTitle: String?) {
        sharedDelegateHandler.onWidgetItemClicked(
            widgetId: widgetId,
            widgetItemId: widgetItemId,
            widgetItemTitle: widgetItemTitle
        ) { [weak self] params in
            self?.methodChannel.invokeMethod(methodName: "onWidgetItemClicked", encodable: params)
        }
    }
    
    func onTriggerCTA(playerType: BlazePlayerType,
                      sourceId: String?,
                      actionType: BlazeCTAActionType,
                      actionParam: String) -> Bool {
        return sharedDelegateHandler.onTriggerCTA(
            playerType: playerType,
            sourceId: sourceId,
            actionType: actionType,
            actionParam: actionParam,
            appOverridesCTAHandling: appOverridesCTAHandling
        ) { [weak self] params in
            self?.methodChannel.invokeMethod(methodName: "onTriggerCTA", encodable: params)
        }
    }
    
    func onTriggerPlayerBodyTextLink(playerType: BlazePlayerType, sourceId: String?, actionParam: String) -> BlazeLinkActionHandleType {
        return sharedDelegateHandler.onTriggerPlayerBodyTextLink(
            playerType: playerType,
            sourceId: sourceId,
            actionParam: actionParam
        ) { [weak self] params in
            self?.methodChannel.invokeMethod(methodName: "onTriggerPlayerBodyTextLink", encodable: params)
        }
    }
    
    func onPlayerEventTriggered(playerType: BlazePlayerType, sourceId: String?, event: BlazePlayerEvent) {
        sharedDelegateHandler.onPlayerEventTriggered(
            playerType: playerType,
            sourceId: sourceId,
            event: event
        ) { [weak self] params in
            self?.methodChannel.invokeMethod(methodName: "onPlayerEventTriggered", encodable: params)
        }
    }
    
}

extension UIView {
    func disableContentInsetAdjustmentBehaviorRecursively() {
        if let scrollView = self as? UIScrollView {
            scrollView.contentInsetAdjustmentBehavior = .never
        }

        for subview in self.subviews {
            subview.disableContentInsetAdjustmentBehaviorRecursively()
        }
    }
}
