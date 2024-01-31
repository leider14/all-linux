

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
      appBar: AppBar(
        toolbarHeight: 80,
        title: const Text("Linux All"),
        backgroundColor: Colors.transparent,
        flexibleSpace:  ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            color: Colors.transparent,
          ),
        )),
      ),
      bottomNavigationBar:MyBottomNavigationBar(),
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
            MyTitleApp(title: "Hola"),
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