import 'package:bloglinux/style/colors.dart';
import 'package:flutter/material.dart';

class MyChipsDesktop {

  static Widget xfce4 = _chip(name: "xfce4", );
  static Widget kde = _chip(name: "kde",);
  static Widget gnome = _chip(name: "gnome",);
  static Widget cinnamon = _chip(name: "cinnamon");
  static Widget mate = _chip(name: "mate");
  static Widget lxqt = _chip(name: "lxqt");
  static Widget budgie = _chip(name: "budgie");
  static Widget enlightenment = _chip(name: "enlightenment");
  static Widget pantheon = _chip(name: "pantheon");
  static Widget fluxbox = _chip(name: "fluxbox");
  static Widget icewm = _chip(name: "icewm");
  static Widget openbox = _chip(name: "openbox");
  static Widget awesome = _chip(name: "awesome");
  static Widget i3wm = _chip(name: "i3wm");
  static Widget deepin = _chip(name: "deepin");
  static Widget trinity = _chip(name: "trinity");
  static Widget pekwm = _chip(name: "pekwm");
  static Widget xfce4twm = _chip(name: "xfce4-twm");


  static Widget _chip({required String name}
  ){
    return  Chip(  
      elevation: 20,
      side: BorderSide.none,
      backgroundColor: myClrEnrichedBlack1000,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),      
      padding: const EdgeInsets.symmetric(
        //horizontal: 2,
        vertical: 0
      ),
      label: Text(name,style: const TextStyle(
        fontWeight: FontWeight.bold,
        color: myClrEnrichedBlack100
      ),)
    );
  }
}