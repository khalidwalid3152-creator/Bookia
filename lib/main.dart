import 'package:bookia/features/splashScreen/splash.dart';
import 'package:bookia/services/dio/provider.dart';
import 'package:flutter/material.dart';
import 'package:bookia/constants/routes/route.dart' hide Route;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DioProvider.init();
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    ThemeData(fontFamily: 'DMSerifDisplay');
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: Routes.routes,
    );
  }
}
