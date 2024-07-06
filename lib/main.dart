import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:im_mottu_mobile/src/infrastructure/services/hive_service.dart';
import 'package:im_mottu_mobile/src/infrastructure/services/lifecycle_watcher.dart';

import 'locator.dart';
import 'src/infrastructure/navigation/routers/app_router.dart';
import 'src/infrastructure/theme/theme.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await dotenv.load(fileName: ".env");
  setupLocator();
  await HiveService.setupHive();
  LifecycleWatcher.init();
  FlutterNativeSplash.remove();

  runApp(ImMottuMobileApp());
}

class ImMottuMobileApp extends StatelessWidget {
  final _appRouter = AppRouter();

  ImMottuMobileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
    );
  }
}
