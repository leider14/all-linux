

import 'package:flutter/material.dart';

class MyTitleApp extends StatelessWidget {
  final String title;
  final String subtitle;
  const MyTitleApp({
    super.key,
    this.subtitle = "",
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return 
    Padding(
      padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
      child: 
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [     
          Text(
            title, 
            textScaler:const TextScaler.linear(2),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black
            ),
          ), 
          if(subtitle.isNotEmpty)Text(
            subtitle, 
            //textScaler:const TextScaler.linear(),
            style: TextStyle(
              //fontWeight: FontWeight.bold,
              color: const Color.fromARGB(200, 0, 0, 0)
            ),
          ), 
        ],
      )
    );
  }
}