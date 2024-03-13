import 'package:bloglinux/style/colors.dart';
import 'package:bloglinux/style/sizes.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class MyShimmerVerticalCard extends StatelessWidget {
  const MyShimmerVerticalCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
        height: mySzCardVerticalHeight,
        width: mySzCardVerticalWidth,
        margin: const EdgeInsets.fromLTRB(0,10,10,10),
        padding:const EdgeInsets.fromLTRB(10,10,10,0),
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
            const SizedBox(height: 10,),
            Center(
              child: Shimmer.fromColors(
                baseColor: myClrEnrichedBlack1100,
                highlightColor: myClrEnrichedBlack1000,
                child: Container(
                  height:  mySzCardVerticalWidth * 0.7,
                  width: mySzCardVerticalWidth * 0.7,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                )
              ),
            ),
            const SizedBox(height: 10,),
            Shimmer.fromColors(
              baseColor: myClrEnrichedBlack1100,
              highlightColor: myClrEnrichedBlack1000,
              child: Container(
                height: 20,
                width: mySzCardVerticalWidth*0.6,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
              )
            ),
            const SizedBox(height: 5,),
            Shimmer.fromColors(
              baseColor: myClrEnrichedBlack1100,
              highlightColor: myClrEnrichedBlack1000,
              child: Container(
                height: 20,
                width: mySzCardVerticalWidth*0.8,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
              )
            ),
            const SizedBox(height: 5,),
            Shimmer.fromColors(
              baseColor: myClrEnrichedBlack1100,
              highlightColor: myClrEnrichedBlack1000,
              child: Container(
                height: 20,
                width: mySzCardVerticalWidth*0.8,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
              )
            ),
            const SizedBox(height: 5,),
            Shimmer.fromColors(
              baseColor: myClrEnrichedBlack1100,
              highlightColor: myClrEnrichedBlack1000,
              child: Container(
                height: 20,
                width: mySzCardVerticalWidth*0.4,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
              )
            ),
            
          ],
        ),
    );
  }
}