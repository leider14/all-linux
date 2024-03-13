

import 'package:bloglinux/style/colors.dart';
import 'package:bloglinux/style/font_style.dart';
import 'package:flutter/material.dart';

class MyWdgNews extends StatefulWidget {
  const MyWdgNews({super.key});

  @override
  State<MyWdgNews> createState() => _MyWdgNewsState();
}

class _MyWdgNewsState extends State<MyWdgNews> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 0),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: myClrCardNew,
        boxShadow: const [
          BoxShadow(
            color: myClrShadow,
            offset: Offset(5,5),
            blurRadius: 10,
            //blurStyle: BlurStyle.outer
          )
        ]
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Nueva distribución de linux, LestLinux",style: myStlCardNewTitle,),
                Text("Ver noticia",style: myStlCardNewSubTitle),
              ],
            ),
          ),
          ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: SizedBox(
                height: 80,
                width: 80,
                child: 
                  Image.asset(
                    "assets/img/penguin.png",
                  )
              )
            ),
        ],
      ),
      
    );
  }
}