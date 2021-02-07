import 'package:caysa2021/constants/constants.dart';
import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(color: kStartBackgroundColor,
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 0,
            child:ClipPath(
              clipper: ClippingPresentation(),
                child: Container(
                width: size.width,
                height:size.height/2,
                decoration: BoxDecoration(
                  color: kStartBackground2Color,
                )
              ),
            ),
          ),

          Positioned(
            top: size.height/3,
            child: child,
          ),
        ],
      ),
    );
  }
}


class ClippingPresentation extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height);
    path.quadraticBezierTo(size.width /8, size.height/3,size.width / 2, size.height-380);
    path.quadraticBezierTo(size.width/1.5, size.height/18, size.width, 0);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

