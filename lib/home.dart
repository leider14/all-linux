

import 'package:bloglinux/widgets/my_bottom_navigation_bar.dart';
import 'package:bloglinux/widgets/my_card_distro_horizontal.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Linux All"),
        backgroundColor: Color.fromARGB(255, 206, 185, 124)
      ),
      bottomNavigationBar:MyBottomNavigationBar(),
      backgroundColor: const Color(0xffF8F8F8),
      body: SingleChildScrollView(
        child: Column(
          children: [
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
      ),
    );
  }
}