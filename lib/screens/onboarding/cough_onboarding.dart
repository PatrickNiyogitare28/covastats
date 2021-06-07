import 'package:flutter/material.dart';
import './breathing_onboarding.dart';

class CoughOnBoarding extends StatefulWidget {
  @override
  _CoughOnBoardingState createState() => _CoughOnBoardingState();
}

class _CoughOnBoardingState extends State<CoughOnBoarding> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    _selectedIndex = index;
    if (_selectedIndex == 2) {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => BreathingOnBoarding()));
    }
  }

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
                  "Cough",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Such as heart or lung deseas o diabets, may be at higher risk of serious illiness. This is similar to what is seen whith other respiratory illinesses, such as influenza",
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
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
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
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    Container(
                      height: 13,
                      width: 13,
                      decoration: BoxDecoration(
                          color: Colors.black12,
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
