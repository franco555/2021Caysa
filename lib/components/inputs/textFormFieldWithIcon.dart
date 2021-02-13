import 'package:caysa2021/components/styles/InputDecorationWhithIcon.dart';
import 'package:flutter/material.dart';

class TextFormFieldWithIconGeneric extends StatefulWidget {

  final String nombre;
  final String placeholder;
  final IconData icono;
  final bool isNum;
  final TextEditingController controller;
  final Function validacion;
  final Function guardar;
  const TextFormFieldWithIconGeneric({
    Key key,
    this.nombre,
    this.placeholder,
    this.isNum,
    this.icono,
    this.controller,
    this.validacion,
    this.guardar
  }) : super(key: key);

  @override
  _TextFormFieldWithIconGenericState createState() => _TextFormFieldWithIconGenericState();
}

class _TextFormFieldWithIconGenericState extends State<TextFormFieldWithIconGeneric> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:15,left: 10,right: 10),
      child: TextFormField(
        keyboardType: widget.isNum ? TextInputType.number : TextInputType.text,
        decoration: buildInputDecorationWithIcon(widget.icono,widget.nombre,widget.placeholder),
        controller:widget.controller ,
        validator: widget.validacion,
        onSaved: widget.guardar,
      ),
    );
  }
}