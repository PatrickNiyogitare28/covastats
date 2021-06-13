import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class StatLineChart extends StatelessWidget {
  final int _index;
  const StatLineChart(this._index);
  @override
  Widget build(BuildContext context) {
    return Container(
              height: 80,
              padding: EdgeInsets.all(10),
              width: double.infinity,
              child: LineChart(LineChartData(
                gridData: FlGridData(show: false),
                titlesData: FlTitlesData(show: false),
                borderData: FlBorderData(show: false),
                
                lineBarsData: [
                  LineChartBarData(
                    spots: [
                      FlSpot(0, 1),
                      FlSpot(1, 3),
                      FlSpot(2, 10),
                      FlSpot(3, 7),
                      FlSpot(4, 12),
                      FlSpot(5, 13),
                      FlSpot(6, 17),
                      FlSpot(7, 15),
                      FlSpot(8, 20)
                    ],
                    isCurved: true,
                    dotData: FlDotData(show: false),
                    colors: [(_index == 1) ? Theme.of(context).accentColor : Theme.of(context).primaryColor]
                  )
                ]
              ), 
              ),
      );
  }
}