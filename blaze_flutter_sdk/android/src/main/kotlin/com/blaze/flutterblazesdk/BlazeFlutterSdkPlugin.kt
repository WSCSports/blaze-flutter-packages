package com.blaze.flutterblazesdk

import android.app.Application
import androidx.annotation.Keep
import com.blaze.flutterblazesdk.sdk_module.BlazeFlutterSDKModule
import com.blaze.flutterblazesdk.shared.BlazeAsyncBridge
import com.blaze.flutterblazesdk.widgets.native_moment_grid.NativeMomentGridFactory
import com.blaze.flutterblazesdk.widgets.native_moment_row.NativeMomentRowFactory
import com.blaze.flutterblazesdk.widgets.native_story_grid.NativeStoryGridFactory
import com.blaze.flutterblazesdk.widgets.native_story_row.NativeStoryRowFactory
import com.blaze.flutterblazesdk.widgets.native_video_grid.NativeVideoGridFactory
import com.blaze.flutterblazesdk.widgets.native_video_row.NativeVideoRowFactory
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result

/** BlazeFlutterSdkPlugin */
@Keep
class BlazeFlutterSdkPlugin : FlutterPlugin, MethodCallHandler {
    /// The MethodChannel that will the communication between Flutter and native Android
    ///
    /// This local reference serves to register the plugin with the Flutter Engine and unregister it
    /// when the Flutter Engine is detached from the Activity
    private lateinit var channel: MethodChannel

    override fun onAttachedToEngine(flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        channel = MethodChannel(flutterPluginBinding.binaryMessenger, "blaze_flutter_sdk")
        channel.setMethodCallHandler(this)

        flutterPluginBinding.platformViewRegistry.apply {
            registerViewFactory(
                    "blaze_stories_grid_view",
                    NativeStoryGridFactory(flutterPluginBinding.binaryMessenger)
            )
            registerViewFactory(
                    "blaze_stories_row_view",
                    NativeStoryRowFactory(flutterPluginBinding.binaryMessenger)
            )
            registerViewFactory(
                    "blaze_moments_grid_view",
                    NativeMomentGridFactory(flutterPluginBinding.binaryMessenger)
            )
            registerViewFactory(
                    "blaze_moments_row_view",
                    NativeMomentRowFactory(flutterPluginBinding.binaryMessenger)
            )
            registerViewFactory(
                    "blaze_videos_grid_view",
                    NativeVideoGridFactory(flutterPluginBinding.binaryMessenger)
            )
            registerViewFactory(
                    "blaze_videos_row_view",
                    NativeVideoRowFactory(flutterPluginBinding.binaryMessenger)
            )
        }

        BlazeFlutterSDKModule.registerModule(
                messenger = flutterPluginBinding.binaryMessenger,
                application = (flutterPluginBinding.applicationContext as Application)
        )

        BlazeAsyncBridge.registerModule(binaryMessenger = flutterPluginBinding.binaryMessenger)
    }

    override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        channel.setMethodCallHandler(null)
    }

    override fun onMethodCall(call: MethodCall, result: Result) {
        if (call.method == "getPlatformVersion") {
            result.success("Android ${android.os.Build.VERSION.RELEASE}")
        } else {
            result.notImplemented()
        }
    }
}
