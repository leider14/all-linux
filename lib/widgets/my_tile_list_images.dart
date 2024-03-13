
import 'package:bloglinux/style/colors.dart';
import 'package:bloglinux/style/font_style.dart';
import 'package:bloglinux/style/sizes.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class MyWdgTileListImages extends StatelessWidget {
  final String title;
  final List listImages;
  const MyWdgTileListImages({
    super.key,
    required this.title,
    required this.listImages,
  });

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text("$title ",
          style: myStlTileListTitle,),
        ),
        SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(20,10,20,10),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: listImages.map((imageUrl) {
              return Padding(
                padding: const EdgeInsets.only(right: 5),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    color: Colors.white,
                    child: SizedBox(
                      height:  mySzScreenShotHeight,
                      width:  mySzScreenShotWidth,
                      child: CachedNetworkImage(
                        imageUrl:imageUrl,
                        fit: BoxFit.cover ,
                        fadeOutDuration:const Duration(seconds: 1),
                        fadeInCurve: Curves.decelerate,
                        placeholder: (context,url) => Shimmer.fromColors(
                          baseColor: myClrEnrichedBlack1100,
                          highlightColor: myClrEnrichedBlack1000,
                          child: Container(
                            width: mySzScreenShotWidth,
                            height: mySzScreenShotHeight,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white
                            ),
                          )
                        ),
                        errorWidget: (context,url,error) => Container(
                          width:  mySzScreenShotWidth,
                          height: mySzScreenShotHeight,
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
              );
            }).toList() ,
          ),
        )
      ],
    );
  }
}