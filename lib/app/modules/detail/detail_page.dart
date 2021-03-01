import 'package:caysa2021/app/modules/detail/detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailPage extends StatelessWidget {

 const DetailPage ({Key key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DetailController>(
      builder: (_)=>Scaffold(

      ),
    );
  }
}