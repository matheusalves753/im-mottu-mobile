import 'package:hive_flutter/hive_flutter.dart';

class HiveService {
  static final HiveService _instance = HiveService._internal();

  factory HiveService() {
    return _instance;
  }

  HiveService._internal();

  final Map<String, Box> _openBoxes = {};

  static Future<void> setupHive() async {
    await Hive.initFlutter();
  }

  Future<Box> getBox(String boxName) async {
    if (!_openBoxes.containsKey(boxName)) {
      _openBoxes[boxName] = await Hive.openBox(boxName);
    }
    return _openBoxes[boxName]!;
  }

  Future<void> closeBox(String boxName) async {
    if (_openBoxes.containsKey(boxName)) {
      await _openBoxes[boxName]!.close();
      _openBoxes.remove(boxName);
    }
  }

  Future<void> closeAllBoxes() async {
    for (var box in _openBoxes.values) {
      await box.close();
    }
    _openBoxes.clear();
  }

  Future<void> clearAllBoxes() async {
    for (var box in _openBoxes.values) {
      await box.clear();
    }
  }
}
