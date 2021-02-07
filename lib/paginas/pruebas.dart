 

import 'package:caysa2021/components/charts/wg_linechart.dart';
import 'package:flutter/material.dart';
class Prueba extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(padding: EdgeInsets.all(20.0),
      child: Container(
        color: Colors.white,
        child: LineReportChart(),
        )),
    );
  }
}