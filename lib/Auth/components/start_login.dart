import 'package:caysa2021/constants/constant_fr_color.dart';
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
          style: TextStyle(color: CFr().getColorTextNavBar()),
        ),
        SizedBox(width:5),
        GestureDetector(
          onTap: press,
          child: Text("Iniciar",
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