import 'package:flutter/material.dart';
class BtnAction extends StatelessWidget {
  final Function fn;
  final IconData icono;
  final double size;
  final Color color;

  const BtnAction({
    Key key,
    this.fn,
    this.icono,
    this.size,
    this.color
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(icono),
      color:color,
      iconSize: size,
      onPressed: fn,
    );
  }
}