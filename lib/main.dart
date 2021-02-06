import 'package:caysa2021/Auth/presentation/Sc_Presentation.dart';
import 'package:caysa2021/constants/constants.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
   MyApp({Key key}) : super(key: key);
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CAYSA',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kStartBackgroundColor,
      ),
      home: ScPresentation(),
    );
  }
}


/*class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AuthService.instance(),
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          // Rutas
        },
        debugShowCheckedModeBanner: false,
        title: 'Firebase Auth con Provider',
        home: Consumer(
          builder: (context, AuthService authService, _) {
            switch (authService.status) {
              case AuthStatus.Uninitialized:
                return Text('Cargando');
              case AuthStatus.Authenticated:
                return PgDashBoard();
              case AuthStatus.Authenticating:
                return PgSignIn();
              case AuthStatus.Unauthenticated:
                return PgSignIn();
            }
            return null;
          },
        )
      ),
    );
  }
}*/