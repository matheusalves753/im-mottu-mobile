import 'dart:async';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:im_mottu_mobile/src/domain/entities/network_status.dart';

class NetworkService extends GetxService {
  static const EventChannel _eventChannel =
      EventChannel('com.mottu.marvel/network');
  final Rx<NetworkStatus> _networkStatus = NetworkStatus.unknown.obs;

  @override
  void onInit() {
    super.onInit();
    if (Platform.isAndroid) {
      _eventChannel
          .receiveBroadcastStream()
          .listen(_onEvent, onError: _onError);
    }
  }

  NetworkStatus get networkStatus => _networkStatus.value;

  Stream<NetworkStatus> get networkStatusStream => _networkStatus.stream;

  void _onEvent(Object? event) {
    if (event == 'connected') {
      _networkStatus.value = NetworkStatus.connected;
    } else if (event == 'disconnected') {
      _networkStatus.value = NetworkStatus.disconnected;
    } else {
      _networkStatus.value = NetworkStatus.unknown;
    }
  }

  void _onError(Object error) {
    _networkStatus.value = NetworkStatus.failed;
  }
}
