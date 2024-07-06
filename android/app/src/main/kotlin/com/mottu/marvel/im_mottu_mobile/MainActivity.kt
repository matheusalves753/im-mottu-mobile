package com.mottu.marvel.im_mottu_mobile

import android.os.Bundle
import io.flutter.embedding.android.FlutterActivity
import io.flutter.plugin.common.MethodChannel
import android.util.Log

class MainActivity: FlutterActivity() {

    override fun onDestroy() {
        val channel = "com.mottu.marvel/lifecycle"
        MethodChannel(flutterEngine?.dartExecutor?.binaryMessenger, channel).invokeMethod("onClose", null)
        super.onDestroy()
    }
}
