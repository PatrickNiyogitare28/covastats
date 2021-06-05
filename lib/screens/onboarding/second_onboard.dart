import 'package:flutter/material.dart';

class SecondOnboard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(height: 100,),
              Image.asset("assets/images/breathing-image.png"),
              Container(height: 30,),
              Text("Fever",
               style: TextStyle(
                 fontSize:25,
                 fontWeight: FontWeight.bold
               ),
              ),
               Text("He serverity of COVID-19 symptoms can range from very mid to severe. Some people have no symptoms. People who are older or have existing chronic medical condition",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: Colors.black38
                ),
               ),
               Container(height: 50,)
            ]
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.business, size: 0),
            title: Text("Skip", style: TextStyle(color: Colors.black),)
          ),
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
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                  Container(
                    height: 13,
                    width: 13,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                Container(
                    height: 13,
                    width: 13,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(20)
                    ),
                  )
                ],
              ),
            )
          ),
         BottomNavigationBarItem(
            icon: Icon(Icons.business, size: 0),
            title: Text("Next", style: TextStyle(color: Colors.black),)
          )
        ],
      ),
    );
  }
}