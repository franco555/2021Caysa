import 'package:caysa2021/app/utils/colors.dart';
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
              showTitles: true,
              getTextStyles: (value) => const TextStyle(color: Colors.greenAccent, fontWeight: FontWeight.bold, fontSize: 10),
              margin: 32,
              reservedSize: 14,
              getTitles: (value) {
                if (value == 0) {
                  return '1K';
                }else if (value == 10) {
                  return '5K';
                }else if (value == 20) {
                  return '10K';
                }else if (value == 50) {
                  return '50K';
                }else if (value == 100) {
                  return '100K';
                }else if (value == 500) {
                  return '500K';
                } else {
                  return '';
                }
              },
            ),
            bottomTitles: SideTitles(
              showTitles: true,
              getTitles: getWeek,
              getTextStyles: (value) => const TextStyle(
                color: Colors.greenAccent,
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
  List<double> barChartDatas = [296, 398, 49, 70, 98, 350, 450];
  List<BarChartGroupData> barChartGroups = [];
  barChartDatas.asMap().forEach(
        (i, value) => barChartGroups.add(
          BarChartGroupData(
            x: i,
            barRods: [
              BarChartRodData(
                y: value,
                //This is not the proper way, this is just for demo
                colors: [i == 5 ? kPrimaryColor : CF.colorInfo()],
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