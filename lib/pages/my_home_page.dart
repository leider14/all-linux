import 'package:bloglinux/data/data_distros.dart';
import 'package:bloglinux/widgets/my_card_distro_horizontal.dart';
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
    return  SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const MyTitleApp(
            title: "Distribuciones linux",
            subtitle: "Aquí encontrarás una amplia variedad de sistemas operativos basados en Linux, cada uno con sus características únicas y ventajas. Sumérgete en el fascinante mundo del software de código abierto y descubre las opciones disponibles para personalizar y optimizar tu experiencia informática.",
          ),
          cards(),
        ],
      ),
    );
  }

  Widget cards(){
    List<Widget> distrosWidget = [];
    for (var distro in dataListDistros) {
      distrosWidget.add(MyWdgCardHorizontal(
        base: distro.base,
        name: distro.name,
        description:distro.description,
        desktops: distro.desktop,
        urlImage: distro.urlIcon
      ));
    }
    return Column(children: distrosWidget,);
  }

}