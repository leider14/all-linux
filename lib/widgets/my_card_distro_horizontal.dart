import 'package:bloglinux/widgets/myContainer.dart';
import 'package:bloglinux/widgets/my_chips_desktop.dart';
import 'package:flutter/material.dart';

class MyCardHorizontal extends StatefulWidget {
  const MyCardHorizontal({super.key});

  @override
  State<MyCardHorizontal> createState() => _MyCardHorizontalState();
}

class _MyCardHorizontalState extends State<MyCardHorizontal> {
  @override
  Widget build(BuildContext context) {
    return MyContainer(
            child: Column(
              children: [
                Row(
                  children: [
                    //TODO sacar la imagen de logo a una funcion, porque le falta la carga
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 255, 255, 255),
                        image: DecorationImage(image: Image.asset("assets/img/manjaro_linux.png").image)
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Expanded(
                      child: 
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Manjaro"),
                            Text("Base: Arch"),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child:
                                Row(children: [
                                  MyChipsDesktop.xfce4,
                                  MyChipsDesktop.kde,
                                  MyChipsDesktop.gnome,
                                ],
                              )
                            )
                          ],
                        )
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Text("Manjaro es una distribución Linux basada en Arch que destaca por su enfoque en la facilidad de uso, ofreciendo estabilidad y acceso rápido a las últimas actualizaciones.")
              ],
            ),
          
    );
  }
}