package com.blaze.flutterblazesdk.shared

/**
 * Global accessor for BlazeAsyncBridge - allows other packages to access it This will be set by the
 * main Flutter plugin when the AsyncBridge is initialized
 */
object BlazeAsyncBridgeProvider {
    var instance: BlazeAsyncBridge? = null
        private set

    fun setInstance(bridge: BlazeAsyncBridge) {
        instance = bridge
    }

}
