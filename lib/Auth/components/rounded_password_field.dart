import 'package:caysa2021/Auth/components/text_field_container.dart';
import 'package:caysa2021/constants/constants.dart';
import 'package:flutter/material.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: fcolorTxt900,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: fcolorTxt900,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: fcolorTxt900,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}