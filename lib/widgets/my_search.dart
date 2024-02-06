


import 'package:bloglinux/style/colors.dart';
import 'package:bloglinux/style/font_style.dart';
import 'package:flutter/material.dart';

class MyWdgSearch extends StatefulWidget {
  const MyWdgSearch({super.key});

  @override
  State<MyWdgSearch> createState() => _MyWdgSearchState();
}

class _MyWdgSearchState extends State<MyWdgSearch> {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: myClrBackgroundCard,
          boxShadow: const [
            BoxShadow(
              color: myClrShadow,
              offset: Offset(5,5),
              blurRadius: 10,
              //blurStyle: BlurStyle.outer
            )
          ]
        ),
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search,),
            
            border: InputBorder.none,
            hintText: "Buscar distribuciones linux ",
            hintStyle: myStlBaseHintText
          
          ),
        ),
      )
    );
  }
}