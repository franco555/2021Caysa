 import 'package:caysa2021/controller/inicio_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
 
 class ScInicio extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return GetBuilder<InicioController>(
       init: InicioController(),
       builder: (_){
         return Scaffold(
          body:Center(
            child:GetBuilder<InicioController>(id: "Text",builder: (_)=>Text("data")),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: (){
              _.increment();
            },
            child: Icon(Icons.add),
          ),
        );
       },
     );
   }
 }