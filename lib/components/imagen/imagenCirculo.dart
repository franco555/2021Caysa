import 'package:flutter/material.dart';

class ImagenCirculo extends StatelessWidget {

  final String imagen;
  final double size;
  final Color color;
  const ImagenCirculo({
    Key key,
    this.imagen,
    this.size,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.all(8.0),
          child:Container(
            width: size,
            height: size,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors:  [
                  color,
                  color
              ])
            ),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                width: size-3,
                height: size-3,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 1
                  ),
                  shape: BoxShape.circle,
                  image: DecorationImage(image:ExactAssetImage(imagen),fit: BoxFit.cover)
                ),
              ),
            ),
          ),
        );
  }
}