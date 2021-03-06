import 'package:caysa2021/constants/constant_fr_color.dart';
import 'package:caysa2021/constants/constants.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class WeeklyChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.7,
      child: BarChart(
        BarChartData(
          barGroups: getBarGroups(),
          borderData: FlBorderData(show: false),
          titlesData: FlTitlesData(
            leftTitles: SideTitles(
              showTitles: false,
            ),
            bottomTitles: SideTitles(
              showTitles: true,
              getTitles: getWeek,
              getTextStyles: (value) => const TextStyle(
                color: Colors.green,
                fontSize: 10,
                fontWeight: FontWeight.w400,
              ),
              
            ),
          ),
        ),
      ),
    );
  }
}

getBarGroups() {
  List<double> barChartDatas = [6, 10, 8, 7, 10, 15, 9];
  List<BarChartGroupData> barChartGroups = [];
  barChartDatas.asMap().forEach(
        (i, value) => barChartGroups.add(
          BarChartGroupData(
            x: i,
            barRods: [
              BarChartRodData(
                y: value,
                //This is not the proper way, this is just for demo
                colors: [i == 4 ? kPrimaryColor : CFr().getColorBtnLogin()],
                width: 5,
              )
            ],
          ),
        ),
      );
  return barChartGroups;
}

String getWeek(double value) {
  switch (value.toInt()) {
    case 0:
      return 'LUN';
    case 1:
      return 'MAR';
    case 2:
      return 'MIE';
    case 3:
      return 'JUE';
    case 4:
      return 'VIE';
    case 5:
      return 'SAB';
    case 6:
      return 'DOM';
    default:
      return '';
  }
}