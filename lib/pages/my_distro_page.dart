
import 'package:bloglinux/firebase/services_firebase.dart';
import 'package:bloglinux/style/colors.dart';
import 'package:bloglinux/style/font_style.dart';
import 'package:bloglinux/style/sizes.dart';
import 'package:bloglinux/widgets/my_chips_desktop.dart';
import 'package:bloglinux/widgets/my_tile_list.dart';
import 'package:bloglinux/widgets/my_tile_list_big_text.dart';
import 'package:bloglinux/widgets/my_tile_list_images.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class MyDistroPage extends StatefulWidget {
  final DocumentSnapshot distro;
  const MyDistroPage({super.key,required this.distro});

  @override
  State<MyDistroPage> createState() => _MyDistroPageState();
}

class _MyDistroPageState extends State<MyDistroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myClrBackground,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 250,
              child: Stack(
                children: [
                  Opacity(
                    opacity: 0.6,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 250,
                      child: ColorFiltered(
                        colorFilter: ColorFilter.mode(
                          !FirestoreServices.existField(data: widget.distro, namefield: "color") ?
                          Colors.green
                          : Color(int.parse("0xFFF${widget.distro["color"]}")),
                          BlendMode.overlay
                        ),
                        child: Image.asset(
                          "assets/img/background.png",
                          fit: BoxFit.cover,
                          frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
                            return child;
                          },
                        ),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset:const  Offset(0, 230),
                    child: Container(
                      height: 30,
                      decoration:const BoxDecoration(
                        color: myClrBackground,
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(20)
                        )
                      ),
                    )
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                     child: Center(
                       child: !FirestoreServices.existField(data: widget.distro, namefield: "logoUrl") ?
                        Container(
                          width:  mySzIconDistroPage,
                          height: mySzIconDistroPage,
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
                          child: Container(
                            color: Colors.white,
                            child: SizedBox(
                              height:  mySzIconDistroPage,
                              width:  mySzIconDistroPage,
                              child: CachedNetworkImage(
                                imageUrl:widget.distro["logoUrl"],
                                fit: BoxFit.cover ,
                                fadeOutDuration:const Duration(seconds: 1),
                                fadeInCurve: Curves.decelerate,
                                placeholder: (context,url) => Shimmer.fromColors(
                                  baseColor: myClrEnrichedBlack1100,
                                  highlightColor: myClrEnrichedBlack1000,
                                  child: Container(
                                    width: mySzIconDistroPage,
                                    height: mySzIconDistroPage,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white
                                    ),
                                  )
                                ),
                                errorWidget: (context,url,error) => Container(
                                  width:  mySzIconDistroPage,
                                  height: mySzIconDistroPage,
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
                            ),
                          )
                        ),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.fromLTRB(20, 60, 20, 0),
                     child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(500),
                              color: Colors.white,
                            ),
                            child: const Icon(
                              Icons.arrow_back_ios_new_rounded,
                              color: myClrBaseColor,),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            print("Mostrar menu de reportar error o cosas asi ");
                          },
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(500),
                              color: Colors.white,
                            ),
                            child: const Icon(
                              Icons.more_vert_rounded,
                              color: myClrBaseColor,),
                          ),
                        )
                      ],
                     ),
                   )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.distro["name"],
                    style: myStlHomeTitle, 
                    textScaler: const TextScaler.linear(1.3),
                  ),
                  const SizedBox(height: 10,),
                  if(FirestoreServices.existField(data: widget.distro, namefield: "distroFather"))
                  MyWdgTileList(
                    icon: Icons.center_focus_strong,
                    title: "Base",
                    text: widget.distro["distroFather"]
                  ),
                  const SizedBox(height: 10,),
                  if(FirestoreServices.existField(data: widget.distro, namefield: "package"))
                  MyWdgTileList(
                    icon: Icons.check_box_outline_blank_outlined,
                    title: "Gestor de paquetes",
                    text: widget.distro["package"]
                  ),
                  const SizedBox(height: 10,),
                  if(FirestoreServices.existFieldCheckListNotEmpty(data: widget.distro, namefield: "desktops"))
                  MyWdgTileList(
                    icon: Icons.desktop_mac_rounded,
                    title: "Escritorios",
                    text: "",
                    listWidgets: getWdgDesktops(widget.distro["desktops"]),
                  ),
                  const SizedBox(height: 10,),
                  if(FirestoreServices.existField(data: widget.distro, namefield: "dateUpdate"))
                  MyWdgTileList(
                    icon: Icons.date_range_rounded,
                    title: "Ultima Actualización",
                    text: getDate(widget.distro["dateUpdate"]),
                  ),
                  const SizedBox(height: 10,),
                  if(FirestoreServices.existField(data: widget.distro, namefield: "description"))
                  MyWdgTileListBigText(
                    title: "Descripción",
                    text: widget.distro["description"],
                  ),
                ],
              ),
            ),
            if(FirestoreServices.existFieldCheckListNotEmpty(data: widget.distro, namefield: "screenshots"))
            MyWdgTileListImages(
              title: "Capturas de pantalla",
              listImages: widget.distro["screenshots"],
            )
          ],
        ),
      ),
    );
  }

  List<Widget> getWdgDesktops(List listDesktops){
    List<Widget> chips = [];
    for (var desktop in listDesktops) {
      chips.add(
        MyChipsDesktop.create(name: desktop)
      );
    }
    return chips;
  }


  String getDate(Timestamp timestamp) {
    DateTime fecha = timestamp.toDate();
    final fechaFormateada = '${fecha.day}/${fecha.month}/${fecha.year}';
    return fechaFormateada;
  }
}