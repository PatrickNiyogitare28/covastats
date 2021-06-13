import 'package:flutter/material.dart';

import 'widgets/stat_card_list.dart';

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
            )
          ],
        )
        
        
        
       
    );
  }
}

