import 'package:caysa2021/Auth/components/text_field_container.dart';
import 'package:caysa2021/constants/constants.dart';
import 'package:flutter/material.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        cursorColor: fcolorTxt900,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: fcolorTxt900,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}