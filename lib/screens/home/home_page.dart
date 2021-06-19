import 'package:flutter/material.dart';

import 'widgets/stat_card_list.dart';
import './widgets/sfcircular_chart.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("COVID - 19"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.person_outline))
        ],
      ),
        body: Column(
          children: [
            Expanded(
              child:  StatCardList()
            ),
            SFCircularChart(),
          ],
        ),
        
        bottomNavigationBar: BottomNavigationBar(
              unselectedIconTheme: IconThemeData(color: Colors.grey),
              selectedLabelStyle: TextStyle(color: Theme.of(context).primaryColor),
              selectedIconTheme: IconThemeData(color: Theme.of(context).primaryColor),
              type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.map_outlined),label: "Map"),
              BottomNavigationBarItem(icon: Icon(Icons.person_outline),label: "Education"),
              BottomNavigationBarItem(icon: Icon(Icons.place_outlined),label: "Discovery"),
               BottomNavigationBarItem(icon: Icon(Icons.book_outlined),label: "News"),
              // BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home")
            ],
        ),
        
       
    );
  }
}

