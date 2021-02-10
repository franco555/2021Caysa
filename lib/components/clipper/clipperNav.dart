import 'package:flutter/material.dart';
class ClippingNav extends CustomClipper<Path>{
  final double _num=75;
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
      size.width /35, size.height-_num,
      size.width/5, size.height-_num
      );
    path.lineTo(size.width, size.height-_num);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}