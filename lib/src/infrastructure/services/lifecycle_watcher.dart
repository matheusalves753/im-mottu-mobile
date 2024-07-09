import 'package:flutter/services.dart';
import 'package:im_mottu_mobile/src/infrastructure/services/hive_service.dart';

class LifecycleWatcher {
  static const platform = MethodChannel('com.mottu.marvel/lifecycle');

  static void init() {
    platform.setMethodCallHandler(_handleMethod);
  }

  static Future<void> _handleMethod(MethodCall call) async {
    if (call.method == 'onClose') {
      _executeBeforeClose();
    }
  }

  static void _executeBeforeClose() {
    HiveService().clearAllBoxes();
  }
}
