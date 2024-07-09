package com.mottu.marvel.im_mottu_mobile

import android.content.Context
import android.net.ConnectivityManager
import android.net.Network
import android.net.NetworkCapabilities
import android.net.NetworkRequest
import android.os.Build
import android.os.Bundle
import android.os.Handler
import android.os.Looper
import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodChannel

class MainActivity: FlutterActivity() {

    private var events: EventChannel.EventSink? = null
    private val handler = Handler(Looper.getMainLooper())

    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        val networkChannel = "com.mottu.marvel/network"
        EventChannel(flutterEngine.dartExecutor.binaryMessenger, networkChannel).setStreamHandler(
            object : EventChannel.StreamHandler {
                override fun onListen(arguments: Any?, eventSink: EventChannel.EventSink) {
                    events = eventSink
                    startNetworkCallback()
                }

                override fun onCancel(arguments: Any?) {
                    events = null
                }
            }
        )
    }

    private fun startNetworkCallback() {
        val connectivityManager = getSystemService(Context.CONNECTIVITY_SERVICE) as ConnectivityManager
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.N) {
            connectivityManager.registerDefaultNetworkCallback(object : ConnectivityManager.NetworkCallback() {
                override fun onAvailable(network: Network) {
                    handler.post { events?.success("connected") }
                }

                override fun onLost(network: Network) {
                    handler.post { events?.success("disconnected") }
                }
            })
        } else {
            val request = NetworkRequest.Builder()
                .addCapability(NetworkCapabilities.NET_CAPABILITY_INTERNET)
                .build()
            connectivityManager.registerNetworkCallback(request, object : ConnectivityManager.NetworkCallback() {
                override fun onAvailable(network: Network) {
                    handler.post { events?.success("connected") }
                }

                override fun onLost(network: Network) {
                    handler.post { events?.success("disconnected") }
                }
            })
        }
    }

    override fun onDestroy() {
        val channel = "com.mottu.marvel/lifecycle"
        MethodChannel(flutterEngine?.dartExecutor?.binaryMessenger!!, channel).invokeMethod("onClose", null)
        super.onDestroy()
    }
}
