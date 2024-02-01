

import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final Widget child;
  const MyContainer({
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
      child: InkWell(
        splashColor: Color.fromARGB(255, 247, 239, 216),
        splashFactory: InkSplash.splashFactory,
        borderRadius: BorderRadius.circular(20),
        onTap: () {},
        child:Ink(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(101, 158, 158, 158),
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
      )
    );
  }
}