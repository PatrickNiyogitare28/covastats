import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartData {
      ChartData(this.x, this.y, this.color);
        final String x;
        final double y;
        final Color color;
}

class SFCircularChart extends StatelessWidget {
   final List<ChartData> chartData = [
            ChartData('David', 25, Colors.blue),
            ChartData('Steve', 38, Colors.black),
            ChartData('Jack', 34, Colors.red),
            ChartData('Others', 52, Colors.green)
        ];
        @override
            Widget build(BuildContext context) {
                // return Scaffold(
                    return Center(
                        child: Container(
                            width: 200,
                            height: 200,
                            child: SfCircularChart(
                                annotations: <CircularChartAnnotation>[
                                  CircularChartAnnotation(
                                    widget: Container(
                                      child: Text("50 %", style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20
                                      ),)
                                    )
                                  )
                                  ],
                                series: <CircularSeries>[
                                    RadialBarSeries<ChartData, String>(
                                        dataSource: chartData,
                                        xValueMapper: (ChartData data, _) => data.x,
                                        yValueMapper: (ChartData data, _) => data.y,
                                        // Corner style of radial bar segment
                                        cornerStyle: CornerStyle.bothCurve,
                                        
                                    ),
                                    
                                ],
                                
                            )
                        )
                    );
                // );
}
}