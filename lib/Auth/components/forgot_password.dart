import 'package:caysa2021/constants/constant_fr_color.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  final Function press;
  const ForgotPassword({
    Key key,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Padding(
          padding:EdgeInsets.fromLTRB(5.0, 5.0,size.width*0.10 , 5.0),
          child: GestureDetector(
            onTap: press,
            child: Text(
              "¿Olvidaste la contraseña?",
              style: TextStyle(
                color: CFr().getColorTextNavBar(),
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        )
      ],
    );
  }
}