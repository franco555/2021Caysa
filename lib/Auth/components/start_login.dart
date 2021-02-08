import 'package:caysa2021/constants/constants.dart';
import 'package:flutter/material.dart';

class StartLogin extends StatelessWidget {
  final Function press;
  const StartLogin({
    Key key,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("¿Tienes una cuenta? ",
          style: TextStyle(color: fcolorTxt100),
        ),
        SizedBox(width:5),
        GestureDetector(
          onTap: press,
          child: Text("Iniciar",
            style: TextStyle(
              color: fcolorTxt100,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}