import 'package:caysa2021/constants/constants.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function press;
  const AlreadyHaveAnAccountCheck({
    Key key,
    this.login = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "¿No tienes una cuenta? " : "¿Tienes una cuenta? ",
          style: TextStyle(color: fcolorTxt100),
        ),
        SizedBox(width:5),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "Crear" : "Iniciar",
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