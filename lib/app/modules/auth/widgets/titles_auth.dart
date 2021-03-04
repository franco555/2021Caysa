import 'package:caysa2021/app/utils/colors.dart';
import 'package:caysa2021/app/utils/constants.dart';
import 'package:flutter/material.dart';
class TitlesAuth extends StatelessWidget {

  final String title;
  final double sz;
  const TitlesAuth({Key key, this.title, this.sz=30}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Constants.PADDING30/2, horizontal: 0),
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold, 
          color: CF.colorInfo(), 
          fontSize: sz
        ),
      ),
    );
  }
}