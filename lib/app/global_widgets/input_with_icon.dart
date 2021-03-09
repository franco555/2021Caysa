import 'package:caysa2021/app/global_widgets/decoration/container_input.dart';
import 'package:caysa2021/app/global_widgets/decoration/input_with_icon.dart';
import 'package:flutter/material.dart';

class TFFieldWithIcon extends StatelessWidget {

  final String nombre;
  final String placeholder;
  final double radio;
  final IconData icono;
  final bool isNum;
  final Function changed;
  final Color color;
  const TFFieldWithIcon({
    Key key,
    this.nombre,
    this.placeholder,
    this.radio,
    this.isNum,
    this.icono,
    this.changed,
    this.color
  }) : super(key: key);

 @override
  Widget build(BuildContext context) {
    return  DecorationContainerInput(
        radio: radio,
        color: color,
        child: TextFormField(
          keyboardType: isNum ? TextInputType.number : TextInputType.text,
          decoration: decorationInputWithIcon(icono,nombre,placeholder,radio),
          onChanged:changed,
        ),
    );
  }
}