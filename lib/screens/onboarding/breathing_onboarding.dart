import 'package:flutter/material.dart';

class BreathingOnBoarding extends StatelessWidget {
  final String _description =
      "Contact your doctor o clinic right away if you have COVID-19, or you liv in or have traveled from an area with ongoing community spread of COVID-19.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 100,
                ),
                Image.asset("assets/images/breathing-image.png"),
                Container(
                  height: 30,
                ),
                Text(
                  "Breathing Difficulty",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Text(
                  _description,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: Colors.black38),
                ),
                Container(
                  height: 50,
                )
              ]),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.business, size: 0),
              title: Text(
                "Skip",
                style: TextStyle(color: Colors.black),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.business, size: 0),
              title: Container(
                width: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 13,
                      width: 13,
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    Container(
                      height: 13,
                      width: 13,
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    Container(
                      height: 13,
                      width: 13,
                      decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ],
                ),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.business, size: 0),
              title: Text(
                "Next",
                style: TextStyle(color: Colors.black),
              ))
        ],
      ),
    );
  }
}
