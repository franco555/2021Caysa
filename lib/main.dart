import 'package:caysa2021/app/modules/splash/splash_binding.dart';
import 'package:caysa2021/app/modules/splash/splash_page.dart';
import 'package:caysa2021/app/routes/app_pages.dart';
import 'package:caysa2021/app/utils/dependency_injection.dart';
import 'package:caysa2021/constants/constant_fr_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
void main() {
  DependencyInjection.init();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
   MyApp({Key key}) : super(key: key);
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CAYSA',
      theme: ThemeData(
        primaryColor: CFr().getColorFondo(),
        scaffoldBackgroundColor: CFr().getColorFondo(),
      ),
      home: SplashPage(),
      initialBinding: SplashBinding(),
      getPages: AppPages.pages,      
    );
  }
}