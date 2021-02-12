import 'package:caysa2021/components/styles/InputDecoration.dart';
import 'package:flutter/material.dart';

class TextFormFieldGeneric extends StatefulWidget {

  final String nombre;
  final IconData icono;
  final Function validacion;
  final Function guardar;
  const TextFormFieldGeneric({
    Key key,
    this.nombre,
    this.icono,
    this.validacion,
    this.guardar
  }) : super(key: key);

  @override
  _TextFormFieldGenericState createState() => _TextFormFieldGenericState();
}

class _TextFormFieldGenericState extends State<TextFormFieldGeneric> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:15,left: 10,right: 10),
      child: TextFormField(
        keyboardType: TextInputType.text,
        decoration: buildInputDecoration(widget.icono,widget.nombre),
        validator: widget.validacion,
        onSaved: widget.guardar,
      ),
    );
  }
}