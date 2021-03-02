import 'package:caysa2021/app/modules/splash/splash_controller.dart';
import 'package:caysa2021/app/utils/colors.dart';
import 'package:caysa2021/app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SplashPage extends StatelessWidget {

  const SplashPage ({Key key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GetBuilder<SplashController>(
      builder: (_)=>Scaffold(
        body:Container(
          height: double.infinity,
          width: double.infinity,
          color: CF.colorBackgroundBlueSplash2(),
          child: Center(
            child: SvgPicture.asset(
              Constants.LOGO_WITH_NAME_WHITE,
              height: size.width * 0.35,
            ),
          ),
        ),
      ),
    );
  }
}