import 'package:covstats/screens/onboarding/first_onboard.dart';
import 'package:flutter/material.dart';
// import 'package:fl_chart/fl_chart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Covast',
      theme: ThemeData(
          // primarySwatch: Color.fromRGBO(0, 196, 140,1),
          accentColor: Color.fromRGBO(0, 196, 140,1),
          primaryColor: Color.fromRGBO(255, 100, 124, 1),
          fontFamily: 'SF Pro Display',
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: AppBarTheme(
            elevation: 6,
            color: Colors.white,
            textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.black,
              fontSizeFactor: 0.9
            ),
            iconTheme: IconThemeData(
              color: Colors.grey
            ),
            // backgroundColor: Colors.white
          ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              backgroundColor: Colors.white, elevation: 0)),
      home: FirstOnboard(),
    );
  }
}
