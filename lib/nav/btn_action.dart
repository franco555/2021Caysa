import 'package:flutter/material.dart';
class BtnAction extends StatelessWidget {
  final Function fn;
  final IconData icono;
  final Color color;

  const BtnAction({
    Key key,
    this.fn,
    this.icono,
    this.color
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(icono),
      color:color,
      onPressed: fn,
    );
  }
}