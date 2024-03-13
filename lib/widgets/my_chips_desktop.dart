import 'package:bloglinux/style/colors.dart';
import 'package:flutter/material.dart';

class MyChipsDesktop {

  static Widget xfce4 = create(name: "xfce4", );
  static Widget kde = create(name: "kde",);
  static Widget gnome = create(name: "gnome",);
  static Widget cinnamon = create(name: "cinnamon");
  static Widget mate = create(name: "mate");
  static Widget lxqt = create(name: "lxqt");
  static Widget budgie = create(name: "budgie");
  static Widget enlightenment = create(name: "enlightenment");
  static Widget pantheon = create(name: "pantheon");
  static Widget fluxbox = create(name: "fluxbox");
  static Widget icewm = create(name: "icewm");
  static Widget openbox = create(name: "openbox");
  static Widget awesome = create(name: "awesome");
  static Widget i3wm = create(name: "i3wm");
  static Widget deepin = create(name: "deepin");
  static Widget trinity = create(name: "trinity");
  static Widget pekwm = create(name: "pekwm");
  static Widget xfce4twm = create(name: "xfce4-twm");


  static Widget create({required String name}
  ){
    return Container(
      margin: const EdgeInsets.only(right: 5,bottom: 5),
      padding: const EdgeInsets.symmetric(
        vertical: 2, 
        horizontal: 10
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: myClrBaseColorLight,
      ),
      child:  Text(name,style: const TextStyle(
        fontWeight: FontWeight.bold,
        color: myClrEnrichedBlack100
        ),
      ),
    );  
  }
}