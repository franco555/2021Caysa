import 'package:flutter/material.dart';
import 'package:caysa2021/paginas/Pg_DashBoard.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash:Image.asset('assets/logo/logo_black.png',fit: BoxFit.contain),          
        nextScreen: PgDashBoard(),
        splashTransition: SplashTransition.slideTransition,
        backgroundColor: Color(0xFF123E59),
      ),
    );
  }

   /*Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'DashBoard'),
    );
  }*/
}

