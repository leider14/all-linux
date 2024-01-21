import 'package:flutter/material.dart';

class MyChipsDesktop {

  static Widget xfce4 = _chip(name: "xfce4", );
  static Widget kde = _chip(name: "kde",);
  static Widget gnome = _chip(name: "gnome",);

  static Widget _chip({required String name}
  ){
    return Chip(  
      side: BorderSide.none,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),

      backgroundColor: const Color.fromARGB(255, 94, 91, 69),
      padding: const EdgeInsets.symmetric(
        horizontal: 2,
        vertical: 0
      ),
      label: Text(name,style: const TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white
      ),)
    );
  }
  
}