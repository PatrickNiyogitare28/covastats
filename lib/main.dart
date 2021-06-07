import 'package:flutter/material.dart';
import './screens/onboarding/first_onboard.dart';

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
          // primarySwatch: Colors.blue,
          primaryColor: Color.fromRGBO(255, 100, 124, 1),
          fontFamily: 'SF Pro Display',
          scaffoldBackgroundColor: Colors.white,
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              backgroundColor: Colors.white, elevation: 0)),
      home: FirstOnboard(),
    );
  }
}
