import 'package:caysa2021/constants/constant_fr_color.dart';
import 'package:flutter/material.dart';

class CreateAccountLogin extends StatelessWidget {
  final bool login;
  final Function press;
  const CreateAccountLogin({
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
          style: TextStyle(color: CFr().getColorTextNavBar()),
        ),
        SizedBox(width:5),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "Crear" : "Iniciar",
            style: TextStyle(
              color: CFr().getColorTextNavBar(),
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}