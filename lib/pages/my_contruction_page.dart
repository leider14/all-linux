import 'package:bloglinux/style/colors.dart';
import 'package:flutter/material.dart';

class MyConstructionPage extends StatelessWidget {
  const MyConstructionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.settings,
            size: 50,
            color: myClrDisable,
          ),
          Text(
            "Esta página está en construcción",
            style: TextStyle(
              color: myClrDisable
            ),
          )
        ],
      )
      
    );
  }
}