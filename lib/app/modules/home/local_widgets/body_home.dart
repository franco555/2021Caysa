import 'package:caysa2021/app/global_widgets/chart/weekly_chart.dart';
import 'package:caysa2021/app/utils/colors.dart';
import 'package:caysa2021/components/other/tituloSeccionWithIcono.dart';
import 'package:caysa2021/constants/constant_fr_color.dart';
import 'package:caysa2021/constants/constants.dart';
import 'package:flutter/material.dart';
class BodyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              color: CF.colorBackgroundAppbar(),
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(20.0),
              child: WeeklyChart(),
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _containerFex(true, "Anterior"),
                VerticalDivider(),
                _containerFex(false, "Siguiente"),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:Column(
                children: [
                  TituloSeccionWithIcono(
                    icono: Icons.history,
                    titulo: "Historial",
                    color: CFr().getColorBtnLogin(),
                    fsize: 18.0,
                  
                  ),
                  
                  Container(
                    width: size.width,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: getPadding20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("sdffdfdd"),
                          
                        ],
                      ),
                    )
                  ),
                  
                ],
              ),
            ),
            
            
          ],
        ),
      
    );
  }


  Widget _containerFex(bool left, String text){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
      margin: EdgeInsets.symmetric(vertical: 10,horizontal: 0),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.05),
            blurRadius: 8,
            spreadRadius: 3,
            offset: Offset(0, 10),
          ),
        ],
        borderRadius:left? BorderRadius.only(
          topRight: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ):BorderRadius.only(
          topLeft: Radius.circular(30),
          bottomLeft: Radius.circular(30),
        )
      ),
      child: Text(text),
    );
  }
  
}