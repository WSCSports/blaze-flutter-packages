import Flutter
import UIKit
import BlazeSDK

public class BlazeFlutterSdkPlugin: NSObject, FlutterPlugin {
    
    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "blaze_flutter_sdk", binaryMessenger: registrar.messenger())
        let instance = BlazeFlutterSdkPlugin()
        registrar.addMethodCallDelegate(instance, channel: channel)
        
        let messenger = registrar.messenger()
        
        let storiesRowFactory = FLStoriesRowViewFactory(messenger: messenger)
        registrar.register(storiesRowFactory, withId: "blaze_stories_row_view")
        
        let storiesGridFactory = FLStoriesGridViewFactory(messenger: messenger)
        registrar.register(storiesGridFactory, withId: "blaze_stories_grid_view")
        
        let momentsRowFactory = FLMomentsRowViewFactory(messenger: messenger)
        registrar.register(momentsRowFactory, withId: "blaze_moments_row_view")
        
        let momentsGridFactory = FLMomentsGridViewFactory(messenger: messenger)
        registrar.register(momentsGridFactory, withId: "blaze_moments_grid_view")
        
        let videosRowFactory = FLVideosRowViewFactory(messenger: messenger)
        registrar.register(videosRowFactory, withId: "blaze_videos_row_view")
        
        let videosGridFactory = FLVideosGridViewFactory(messenger: messenger)
        registrar.register(videosGridFactory, withId: "blaze_videos_grid_view")
        
        BlazeFlutterSDKModule.registerModule(messenger: messenger)
        BlazeAsyncBridgeModule.registerModule(messenger: messenger)
    }
    
    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        switch call.method {
        case "getPlatformVersion":
            result("iOS " + UIDevice.current.systemVersion)
        default:
            result(FlutterMethodNotImplemented)
        }
    }
}
