import 'package:caysa2021/constants/constants.dart';
import 'package:caysa2021/paginas/home/components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
//https://www.youtube.com/watch?v=XBKzpTz65Io
class PgDashBoard extends StatefulWidget {
  PgDashBoard({Key key}) : super(key: key);
  @override
  _PgDashBoardState createState() => _PgDashBoardState();
}

class _PgDashBoardState extends State<PgDashBoard> {


  @override
  Widget build(BuildContext context) {
   //final authService = Provider.of<AuthService>(context);
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/back.svg"),
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/search.svg",
            // By default our  icon color is white
            color: kTextColor,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/cart.svg",
            // By default our  icon color is white
            color: kTextColor,
          ),
          onPressed: () {},
        ),
        SizedBox(width: getPadding20 / 2),
         /*RaisedButton(
          child: Text('Cerrar Sesión ${authService.user.displayName}'),
          onPressed: () {
            authService.signOut();
          },
        )*/
      ],
    );
  }
}