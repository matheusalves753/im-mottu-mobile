import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'locator.dart';
import 'src/infrastructure/navigation/routers/app_router.dart';
import 'src/infrastructure/theme/theme.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  setupLocator();
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
