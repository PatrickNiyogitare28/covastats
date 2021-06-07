import 'package:flutter/material.dart';
import 'dart:async';

import './second_onboard.dart';

class FirstOnboard extends StatefulWidget {
  @override
  _FirstOnboardState createState() => _FirstOnboardState();
}

class _FirstOnboardState extends State<FirstOnboard> {
  @override
  void initState() {
    super.initState();
    _startTime();
  }

  _startTime() async {
    var duration = Duration(seconds: 2);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => SecondOnboard()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("assets/logos/app-logo.png"),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                "COVASTARTS",
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
