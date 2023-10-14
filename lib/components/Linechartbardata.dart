import 'package:fl_chart/fl_chart.dart';

import 'package:flutter/material.dart';

class Linechartbardata extends StatelessWidget {
  const Linechartbardata({super.key});

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
          borderData: FlBorderData(show: false),
          titlesData: const FlTitlesData(show: false),
          gridData: const FlGridData(show: false),
          minX: 0,
          maxX: 11,
          minY: 0,
          maxY: 6,
          lineBarsData: [
            LineChartBarData(
              spots: const [
                FlSpot(11, 5),
                FlSpot(9.5, 3),
                FlSpot(8, 4.5),
                FlSpot(6.7, 3.5),
                FlSpot(4.9, 4),
                FlSpot(2.6, 2.5),
                FlSpot(0, 3),
              ],
              barWidth: 2.5,
              isStrokeCapRound: true,
              isCurved: true,
              dotData: const FlDotData(show: false),
              gradient: const LinearGradient(colors: [
                Color(0xff625ae7),
                Color(0xff8d63da),
              ]),
              belowBarData: BarAreaData(
                  show: true,
                  gradient: const LinearGradient(colors: [
                    Color(0xff625ae7),
                    Color(0xff8d63da),
                  ])),
              aboveBarData: BarAreaData(color: Colors.white),
            ),
          ]),
    );
  }
}
