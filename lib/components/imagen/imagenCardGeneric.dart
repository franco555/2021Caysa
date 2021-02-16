import 'package:flutter/material.dart';

class ImagenCardGeneric extends StatelessWidget {
  final String imagen;

  const ImagenCardGeneric({
    Key key,
    this.imagen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      width:60.0,
      margin: EdgeInsets.only(left: 15.0, top: 5.0, right: 15.0, bottom: 5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        color: Colors.blueGrey,
        image: DecorationImage(
          image: AssetImage(imagen),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}