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
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: () {},
        child:Ink(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(5,5),
                blurStyle: BlurStyle.inner
              )
            ]
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
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
                        color: const Color.fromARGB(255, 216, 216, 216)
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
          ),
        )
      ),
    );
  }
}