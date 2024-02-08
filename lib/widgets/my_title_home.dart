


import 'package:bloglinux/style/font_style.dart';
import 'package:flutter/material.dart';

class MyWdgHomeTitle extends StatefulWidget {
  final String title;
  final bool showAll;
  final VoidCallback? onPressed;
  const MyWdgHomeTitle({
    super.key,
    required this.title,
    this.onPressed,
    this.showAll = false,
  });

  @override
  State<MyWdgHomeTitle> createState() => _MyWdgHomeTitleState();
}

class _MyWdgHomeTitleState extends State<MyWdgHomeTitle> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 5),
      child: Row(
        children: [
          Expanded(
            child:Text(
              widget.title,
              style: myStlHomeTitle,
            )
          ),
          if(widget.showAll)InkWell(
            onTap: () {
              if(widget.onPressed != null){
                widget.onPressed!();
              }
            },
            child:Ink(
              child: Text(
                "Ver mas",
                style: myStlHomeTitleShowAll,
              )
            ),
          )
          
        ],
      ),
    );
  }
}