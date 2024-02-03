import 'package:bloglinux/style/colors.dart';
import 'package:bloglinux/style/font_style.dart';
import 'package:bloglinux/widgets/my_container_button.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shimmer/shimmer.dart';

class MyWdgCardHorizontal extends StatefulWidget {
  final String name;
  final String urlImage;
  final String description;
  final String base;
  final List<Widget> desktops;
  const MyWdgCardHorizontal({
    required this.base,
    required this.name,
    required this.description,
    required this.desktops,
    required this.urlImage,
    super.key
  });

  @override
  State<MyWdgCardHorizontal> createState() => _MyWdgCardHorizontalState();
}

class _MyWdgCardHorizontalState extends State<MyWdgCardHorizontal> {

  @override
  Widget build(BuildContext context) {
    return MyWdgContainerButton(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: SizedBox(
                  height: 80,
                  width: 80,
                  child: CachedNetworkImage(
                    imageUrl: widget.urlImage,
                    fadeOutDuration:const Duration(seconds: 1),
                    fadeInCurve: Curves.decelerate,
                    placeholder: (context,url) => Shimmer.fromColors(
                      baseColor: myClrEnrichedBlack1100,
                      highlightColor: myClrEnrichedBlack1000,
                      child: Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white
                        ),
                      )
                    ),
                    errorWidget: (context,url,error) => Container(
                      width: 80,
                      height: 80,
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
              const SizedBox(width: 10,),
              Expanded(
                child: 
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(widget.name,style: myStlCardDistroTitle,),
                      Text.rich(
                        TextSpan(
                          text: "Base: ",
                          style: myStlCardDistroSubTitle,
                          children: [
                            TextSpan(                              
                              text: widget.base,
                              style: myStlCardDistroText,
                            )
                          ],                          
                        )
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child:
                          Row(children: widget.desktops,
                        )
                      )
                    ],
                  )
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Text(
            widget.description,
            overflow: TextOverflow.ellipsis,
            maxLines: 3,
            style: myStlBaseText,
          )
        ],
      ),
          
    );
  }

  
}