

import 'package:bloglinux/controllers/my_navigator_controller.dart';
import 'package:bloglinux/data/data_distros.dart';
import 'package:bloglinux/data/data_models.dart';
import 'package:bloglinux/style/colors.dart';
import 'package:bloglinux/style/font_style.dart';
import 'package:bloglinux/widgets/my_ads.dart';
import 'package:bloglinux/widgets/my_container_button.dart';
import 'package:bloglinux/widgets/my_news.dart';
import 'package:bloglinux/widgets/my_search.dart';
import 'package:bloglinux/widgets/my_title_app.dart';
import 'package:bloglinux/widgets/my_title_home.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

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
          MyTitleApp(
            title: "Bienvenido al mundo linux 🐧",
            subtitle: "Explora artículos, tutoriales y consejos prácticos adaptados a tus intereses. Únete a una comunidad interactiva, comparte experiencias y simplifica tu camino hacia el conocimiento. Descarga ahora para descubrir, aprender y crecer juntos. ¡Bienvenido a un mundo de posibilidades!",
          ),
          MyWdgSearch(),
          MyWdgNews(),
          MyAds(),
          wdgDistros()
        ],
      ),
    );
  }

  Widget wdgDistros(){

    List<Widget> distros = [];

    for (MyDataModelDistro distro in dataListDistros.sublist(0 , 5)){
      distros.add(
        SizedBox(
          width: 120,
          child: Container(
          margin: const EdgeInsets.fromLTRB(0,10,10,10),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: myClrBackgroundCard,
            boxShadow: const [
              BoxShadow(
                color: myClrShadow,
                offset: Offset(5,5),
                blurRadius: 10,
                //blurStyle: BlurStyle.outer
              )
            ]
          ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: SizedBox(
                    height: 90,
                    width: 90,
                    child: CachedNetworkImage(
                        imageUrl: distro.urlIcon,
                        fadeOutDuration:const Duration(seconds: 1),
                        fadeInCurve: Curves.decelerate,
                        placeholder: (context,url) => Shimmer.fromColors(
                          baseColor: myClrEnrichedBlack1100,
                          highlightColor: myClrEnrichedBlack1000,
                          child: Container(
                            width: 90,
                            height: 90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white
                            ),
                          )
                        ),
                        errorWidget: (context,url,error) => Container(
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: myClrEnrichedBlack1100,
                          ),
                          child:const Center(
                            child: Icon(
                              Icons.image_not_supported_outlined,
                              color: myClrEnrichedBlack900,
                            ),
                          ),
                        ),
                      ),
                    )
                  ),
              ),
                Text(
                  distro.name,
                  style: myStlCardDistroTitle,
                ),
                Text(
                  "Base: ${distro.base}",
                  style: myStlCardDistroTitle,
                ),
                Text(
                  distro.description,
                  maxLines: 3, 
                  style: myStlCardDistroText,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            )
          ),
        )
      );
    }

    return Column(
      children: [
        MyWdgHomeTitle(
          title: "Distribuciones",
          showAll: true,
          onPressed: () {
            var controllerDistro = Get.put(MyNavigatorController());
            controllerDistro.page.value = 1;
            controllerDistro.pageController.value.jumpToPage(1);
            print(controllerDistro.page.toString());
          },
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(children: distros,),
        )
      ],
    );
     
  }
}