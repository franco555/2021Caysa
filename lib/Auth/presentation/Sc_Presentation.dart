import 'package:caysa2021/Auth/presentation/components/Sc_BodyPresentation.dart';
import 'package:flutter/material.dart';
class ScPresentation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
         child:ScBodyPresentation(),
      )
    );
  }
}