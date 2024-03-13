import 'package:bloglinux/style/colors.dart';
import 'package:bloglinux/style/font_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyWdgTileList extends StatelessWidget {
  final String title;
  final String text;
  final IconData icon;
  final List<Widget>? listWidgets;
  const MyWdgTileList({
    super.key,
    required this.title,
    required this.text,
    required this.icon,
    this.listWidgets,
  });

  @override
  Widget build(BuildContext context) {
    return 
    Row(
      children: [
        Container(
          margin:const EdgeInsets.only(right: 10),
          padding:const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(500),
            color: myClrBaseColorLight
          ),
          child: Icon(
            icon,
            size: 20,
            color: myClrBaseColor,
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("$title ",
              style: myStlTileListTitle,),
              if(listWidgets == null)
              Text(text,
                style: myStlTileListText,
                maxLines: null,
                ),
              if(listWidgets != null)
              Wrap(
                children: listWidgets!,
              )
            ],
          ),
        )
      ],
    );
  }
}