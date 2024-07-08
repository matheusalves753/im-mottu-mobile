import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:im_mottu_mobile/src/infrastructure/services/hive_service.dart';
import 'package:im_mottu_mobile/src/infrastructure/services/lifecycle_watcher.dart';

import 'dependency_injection.dart';
import 'src/infrastructure/navigation/routers/app_routes.dart';
import 'src/infrastructure/theme/theme.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await dotenv.load(fileName: ".env");
  DependencyInjection.init();
  await HiveService.setupHive();
  LifecycleWatcher.init();
  FlutterNativeSplash.remove();

  runApp(const ImMottuMobileApp());
}

class ImMottuMobileApp extends StatelessWidget {
  const ImMottuMobileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.charactersList,
      getPages: AppRoutes.routes,
    );
  }
}
