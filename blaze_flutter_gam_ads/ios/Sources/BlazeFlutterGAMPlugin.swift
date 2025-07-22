import Flutter
import UIKit

public class BlazeFlutterGAMPlugin: NSObject, FlutterPlugin {
    
    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "blaze_flutter_gam", binaryMessenger: registrar.messenger())
        let instance = BlazeFlutterGAMPlugin()
        registrar.addMethodCallDelegate(instance, channel: channel)
        
        let messenger = registrar.messenger()
        
        BlazeFlutterGAMModule.registerModule(messenger: messenger)
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

