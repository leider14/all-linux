

import 'package:bloglinux/style/colors.dart';
import 'package:flutter/material.dart';

class MyWdgContainerButton extends StatelessWidget {
  //TODO AGREGAR LA FUNCION DE ONPRESSED
  final Widget child;
  const MyWdgContainerButton({
    super.key,
    required this.child
  });

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.symmetric(
      horizontal: 20,
      vertical: 10),
      padding: const EdgeInsets.all(20),
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
      child: child   
    );
  }
}