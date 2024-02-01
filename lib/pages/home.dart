

import 'dart:ui';

import 'package:bloglinux/page.dart';
import 'package:bloglinux/pages/comands.dart';
import 'package:bloglinux/widgets/my_bottom_navigation_bar.dart';
import 'package:bloglinux/widgets/my_card_distro_horizontal.dart';
import 'package:bloglinux/widgets/title.dart';
import 'package:flutter/material.dart';

class PageHome extends StatefulWidget {
  const PageHome({super.key});

  @override
  State<PageHome> createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const MyBottomNavigationBar(),
      backgroundColor: const Color(0xffF8F8F8),
      body: MySwiperPage(pages: [
        wdgHome(),
        PageComands()
      ])
    );
  }

  Widget wdgHome(){
    return SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyTitleApp(
              title: "Distribuciones linux",
              subtitle: "Aquí encontrarás una amplia variedad de sistemas operativos basados en Linux, cada uno con sus características únicas y ventajas. Sumérgete en el fascinante mundo del software de código abierto y descubre las opciones disponibles para personalizar y optimizar tu experiencia informática.",
            ),
            MyCardHorizontal(),
            MyCardHorizontal(),
            MyCardHorizontal(),
            MyCardHorizontal(),
            MyCardHorizontal(),
            MyCardHorizontal(),
            MyCardHorizontal(),
            MyCardHorizontal(),
          ],
        ),
      );
  }
}