

import 'package:bloglinux/style/font_style.dart';
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
      padding: EdgeInsets.fromLTRB(
        20,
        50,
        20,
        subtitle.isNotEmpty ? 20 :5),
      child: 
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [     
          Text(
            title, 
            textScaler:const TextScaler.linear(1.5),
            style: myStlTitleApp,
          ), 
          if(subtitle.isNotEmpty)
          Text(
            subtitle, 
            style: myStlTitleAppSubtitle
          ), 
        ],
      )
    );
  }
}