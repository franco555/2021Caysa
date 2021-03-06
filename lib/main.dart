import 'package:caysa2021/constants/constant_fr_color.dart';
import 'package:caysa2021/dashBoard/Sc_DashBoard.dart';
import 'package:caysa2021/dashBoard/test.dart';
import 'package:caysa2021/received/scReceived.dart';
import 'package:caysa2021/send/scSend.dart';
import 'package:caysa2021/send/scSendDetail.dart';
import 'package:caysa2021/send/scSendHistory.dart';
import 'package:caysa2021/send/scSendReport.dart';
import 'package:caysa2021/received/scReceivedDetail.dart';
import 'package:caysa2021/received/scReceivedHistory.dart';
import 'package:caysa2021/received/scReceivedReport.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
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
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CAYSA',
      theme: ThemeData(
        primaryColor: CFr().getColorFondo(),
        scaffoldBackgroundColor: CFr().getColorFondo(),
      ),
      home: ScDashBoard(),
      routes: <String, WidgetBuilder>{
        "/dashboard":(BuildContext context)=>new ScTest(),
        "/compra":(BuildContext context)=>new ScTest(),
        "/venta":(BuildContext context)=>new ScTest(),
        "/envio":(BuildContext context)=>new ScSend(),
        "/envio_History":(BuildContext context)=>new ScSendHistory(),
        "/envio_Detail":(BuildContext context)=>new ScSendDetail(),
        "/envio_Report":(BuildContext context)=>new ScSendReport(),
        "/recepcion":(BuildContext context)=>new ScReceived(),
        "/recepcion_Detail":(BuildContext context)=>new ScReceivedDetail(),
        "/recepcion_Report":(BuildContext context)=>new ScReceivedReport(),
        "/recepcion_History":(BuildContext context)=>new ScReceivedHistory(),
        "/devolucion":(BuildContext context)=>new ScTest(),
        "/pedido":(BuildContext context)=>new ScTest(),
        "/reporte":(BuildContext context)=>new ScTest(),
        "/configuracion":(BuildContext context)=>new ScTest(),
        "/salir":(BuildContext context)=>new ScTest(),
      },
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