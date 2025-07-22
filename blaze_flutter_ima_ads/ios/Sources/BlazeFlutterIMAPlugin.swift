import Flutter
import UIKit

public class BlazeFlutterIMAPlugin: NSObject, FlutterPlugin {
    
    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "blaze_flutter_ima", binaryMessenger: registrar.messenger())
        let instance = BlazeFlutterIMAPlugin()
        registrar.addMethodCallDelegate(instance, channel: channel)
        
        let messenger = registrar.messenger()
        
        BlazeFlutterIMAModule.registerModule(messenger: messenger)
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

