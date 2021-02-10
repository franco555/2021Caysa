import 'package:caysa2021/nav/customAppBar.dart';
import 'package:flutter/material.dart';
class ScTest extends StatefulWidget {
  @override
  _ScTestState createState() => _ScTestState();
}

class _ScTestState extends State<ScTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:CustomAppBar(
        tituloNav: "Envio",
        tituloSc: "ENVIO DE CORTES",
        subTituloSc: "Alejandro",
        fecha: "10-12-12",
        detail: true,
      ) ,
      body: SingleChildScrollView(
        child:Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          color: Colors.white,
                        ),
                        padding:
                            EdgeInsets.only(right: 20, top: 10.0, bottom: 10.0),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    _containerHome(
                                        AssetImage('assets/logo/logo_white.png')),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          'Payment',
                                          style: TextStyle(
                                              color: Color(0xFF005073),
                                              fontFamily: 'Montserrat',
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 5.0),
                                          child: Text(
                                            'Payment from John',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    Text(
                                      '\$690.90',
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontFamily: 'Montserrat',
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 5.0),
                                      child: Text(
                                        'Sept 06',
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      )
      ),
    );
  }


  Widget _containerHome(AssetImage image) {
  return Container(
    height: 50.0,
    width: 50.0,
    margin: EdgeInsets.only(left: 15.0, top: 10.0, right: 15.0, bottom: 10.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(15.0)),
      color: Colors.blueGrey,
      boxShadow: [
        BoxShadow(
          color: Colors.black38,
          offset: Offset(0, 2),
          blurRadius: 6.0,
        ),
      ],
      image: DecorationImage(
        image: image,
        fit: BoxFit.cover,
      ),
    ),
  );
}
}

