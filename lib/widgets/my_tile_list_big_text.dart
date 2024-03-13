import 'dart:convert';

import 'package:bloglinux/style/font_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyWdgTileListBigText extends StatefulWidget {

  final String title;
  final String text;
  const MyWdgTileListBigText({
    super.key,
    required this.title,
    required this.text,
  });

  @override
  State<MyWdgTileListBigText> createState() => _MyWdgTileListBigTextState();
}

class _MyWdgTileListBigTextState extends State<MyWdgTileListBigText> {
  bool showText = true;
  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("${widget.title} ",
        style: myStlTileListTitle,),
        const SizedBox(height: 10,),
        Text(widget.text,
          style: myStlTileListText,
          maxLines: showText ? 10 : null,
        ),
        const SizedBox(height: 10,),
        if( LineSplitter.split(widget.text).length < 10)
        GestureDetector(
          onTap: () {
            showText = !showText;
            setState(() {});
          },
          child: Text(
            !showText ? "Mostrar menos" : "Mostrar más",
            style: myStlShowText,
          ),
        )
      ],
    );
  }

  
}