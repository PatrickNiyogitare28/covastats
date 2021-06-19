import 'package:flutter/material.dart';

import './stat_line_chart.dart';

class 
StatCardList extends StatelessWidget {
  const StatCardList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,

      
      children: List.generate(4, (i) {
        return Center(
            child: Padding(
          padding: const EdgeInsets.all(15),
          child: Container(
            // color: Colors.red,
            height: 500,
            decoration: BoxDecoration(
              border: Border.all(
                  color: Color.fromRGBO(229, 229, 229, 1), width: 0.5),
              borderRadius: BorderRadius.circular(5),
              // color: Colors.red,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Total cases",
                            style: TextStyle(
                                color: Color.fromRGBO(161, 161, 161, 1),
                                fontSize: 16),
                          ),
                          Icon(
                            Icons.trending_up_outlined,
                            color: (i == 1)
                                ? Theme.of(context).accentColor
                                : Theme.of(context).primaryColor,
                          )
                        ],
                      ),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              "333,475",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: (i == 1)
                                      ? Theme.of(context).accentColor
                                      : (i == 3)
                                          ? Theme.of(context).primaryColor
                                          : Colors.black),
                            ),
                          )),
                    ],
                  ),
                  StatLineChart(i),
                ],
              ),
            ),
          ),
        ));
      }),
    );
  }
}
