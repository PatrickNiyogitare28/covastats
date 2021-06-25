import 'package:flutter/material.dart';

import './sfcircular_chart.dart';

class Recovery extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Ratio of Recovery",
                       style: TextStyle(
                         fontWeight: FontWeight.bold,
                         fontSize: 15
                       )
                      ),
                      TextButton(
                        onPressed: (){},
                        child: Text("View Details"))
                    ],
                  ),
                  SFCircularChart()
                ],
              ),
            ),
      ),
    );
  }
}