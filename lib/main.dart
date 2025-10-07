
import 'package:bookia/services/dio/provider.dart';
import 'package:bookia/services/shared_pref/shared.dart';
import 'package:flutter/material.dart';
import 'package:bookia/constants/routes/route.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DioProvider.init();
  await sharedPref.init();
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
