

import 'package:bloglinux/controllers/my_navigator_controller.dart';
import 'package:bloglinux/firebase/distros_firebase.dart';
import 'package:bloglinux/firebase/services_firebase.dart';
import 'package:bloglinux/pages/my_distro_page.dart';
import 'package:bloglinux/shimmers/my_shimer_list_horizontal.dart';
import 'package:bloglinux/style/colors.dart';
import 'package:bloglinux/style/font_style.dart';
import 'package:bloglinux/style/sizes.dart';
import 'package:bloglinux/widgets/my_ads.dart';
import 'package:bloglinux/widgets/my_news.dart';
import 'package:bloglinux/widgets/my_search.dart';
import 'package:bloglinux/widgets/my_title_app.dart';
import 'package:bloglinux/widgets/my_title_home.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
          const MyTitleApp(
            title: "Bienvenido al mundo linux 🐧",
          ),
          
          const MyWdgSearch(),
          const MyAds(),
          const MyWdgNews(),
          MyWdgHomeTitle(
            title: "Distribuciones",
            showAll: true,
            onPressed: () {
              var controllerDistro = Get.put(MyNavigatorController());
              controllerDistro.page.value = 1;
              controllerDistro.pageController.value.jumpToPage(1);
            },
          ), 
          StreamBuilder(
            stream: DistrosFirebase.getDistros(),
            builder:(context,AsyncSnapshot<QuerySnapshot> snapshot) {
              if(snapshot.connectionState == ConnectionState.waiting){
                return const MyShimmerListHorizontal();
              } else if(snapshot.data!.docs.isNotEmpty){
                final data = snapshot.data?.docs;
                return wdgDistros(data!);
              }
              else{
                return Text("Vacio");
              }
            },
          ),
          

          MyWdgHomeTitle(
            title: "Aplicaciones",
            showAll: true,
            onPressed: () {
              var controllerDistro = Get.put(MyNavigatorController());
              controllerDistro.page.value = 1;
              controllerDistro.pageController.value.jumpToPage(1);
            },
          ), 
          StreamBuilder(
            stream: DistrosFirebase.getDistros(),
            builder:(context,AsyncSnapshot<QuerySnapshot> snapshot) {
              if(snapshot.connectionState == ConnectionState.waiting){
                return const MyShimmerListHorizontal();
              } else if(snapshot.data!.docs.isNotEmpty){
                final data = snapshot.data?.docs;
                return wdgDistros(data!);
              }
              else{
                return Text("Vacio");
              }
            },
          ),
        ],
      ),
    );
  }

  Widget wdgDistros(List<QueryDocumentSnapshot> listDocumentSnapshot){
    
    List<Widget> distros = [];

    for (DocumentSnapshot distro in listDocumentSnapshot){
      distros.add(
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return MyDistroPage(distro: distro);
              },
              )
            );
          },
          child: Container(
            height: mySzCardVerticalHeight,
            width: mySzCardVerticalWidth,
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
                child:
                !FirestoreServices.existField(data: distro, namefield: "logoUrl") ?
                  Container(
                    width:  mySzCardVerticalWidth * 0.7,
                    height: mySzCardVerticalWidth * 0.7,
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
                  ):
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: SizedBox(
                      height:  mySzCardVerticalWidth * 0.7,
                      width:  mySzCardVerticalWidth * 0.7,
                      child: CachedNetworkImage(
                        imageUrl:distro["logoUrl"],
                        fit: BoxFit.cover ,
                        fadeOutDuration:const Duration(seconds: 1),
                        fadeInCurve: Curves.decelerate,
                        placeholder: (context,url) => Shimmer.fromColors(
                          baseColor: myClrEnrichedBlack1100,
                          highlightColor: myClrEnrichedBlack1000,
                          child: Container(
                            width: mySzCardVerticalWidth * 0.7,
                            height: mySzCardVerticalWidth * 0.7,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white
                            ),
                          )
                        ),
                        errorWidget: (context,url,error) => Container(
                          width:  mySzCardVerticalWidth * 0.7,
                          height: mySzCardVerticalWidth * 0.7,
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
                const SizedBox(height: 10,),
                Text(
                  distro["name"],
                  style: myStlCardDistroTitle,
                ),
                FirestoreServices.existField(data: distro, namefield: "distroFather") ?
                  Text(
                    distro["distroFather"],
                    style: myStlCardDistroTitle,
                  )
                :const Text("No distro father"),
                  FirestoreServices.existField(data: distro, namefield: "description") ?
                    Text(
                    distro["description"],
                    style: myStlCardDistroText,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,)
                  :
                  const Text("No description")
              ],
            )
          
          ),
        )
      );
    }

    return  SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding:const EdgeInsets.symmetric(horizontal: 20),
      child: Row(children: distros,),
    );
     
  }
}