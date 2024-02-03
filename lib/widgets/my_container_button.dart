

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
    return 
    Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10
      ),
      child: Container(
        padding: const EdgeInsets.all(10),
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
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: child
        )
      )
    );
  }
}