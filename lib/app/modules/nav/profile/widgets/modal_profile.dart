import 'package:caysa2021/app/global_widgets/decoration/container_input.dart';
import 'package:caysa2021/app/global_widgets/decoration/input_with_icon.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class ModalProfile{
  void getDialog(String text, Function onChanged, onPress){
    Get.defaultDialog(
      actions: <Widget>[
        FlatButton(child: new Text("Cancelar"),onPressed:(){ Get.back(); onChanged(text);},),
        VerticalDivider(),
        FlatButton(child: new Text("Guardar"),onPressed:onPress,),
      ],
      title: "Cambiar",
      content: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 1, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(height: 1,),
            DecorationContainerInput(
                radio: 30,
                color: Colors.white70,
                child: TextFormField(
                  keyboardType:TextInputType.text,
                  decoration: decorationInputWithIcon(Icons.cached_rounded,"Cambiar $text","",30),
                  onChanged:onChanged,
                ),
            )
          ],
        ),
      )
    );
  }
}