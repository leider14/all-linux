

import 'package:bloglinux/widgets/my_ads.dart';
import 'package:bloglinux/widgets/my_search.dart';
import 'package:bloglinux/widgets/my_title_app.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const MyTitleApp(
            title: "Bienvenido al mundo linux 🐧",
            subtitle: "Explora artículos, tutoriales y consejos prácticos adaptados a tus intereses. Únete a una comunidad interactiva, comparte experiencias y simplifica tu camino hacia el conocimiento. Descarga ahora para descubrir, aprender y crecer juntos. ¡Bienvenido a un mundo de posibilidades!",
          ),
          MyWdgSearch(),
          Container(
            margin: EdgeInsets.all(20),
            height: 170,
            color: Colors.red,
          ),
          const MyAds(),
        ],
      ),
    );
  }
}