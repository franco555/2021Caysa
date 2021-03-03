import 'package:caysa2021/app/modules/auth/widgets/decoration/tf_container_decoration_auth.dart';
import 'package:caysa2021/constants/constants.dart';
import 'package:flutter/material.dart';

class RoundedInputFieldAuth extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputFieldAuth({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TFContainerDecoration(
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