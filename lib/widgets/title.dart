

import 'package:flutter/material.dart';

class MyTitleApp extends StatelessWidget {
  final String title;
  const MyTitleApp({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title, 
      textScaler:const TextScaler.linear(1.6),
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.black
      ),
    );
  }
}