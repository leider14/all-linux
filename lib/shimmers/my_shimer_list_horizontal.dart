import 'package:bloglinux/shimmers/my_shimmer_card.dart';
import 'package:flutter/widgets.dart';

class MyShimmerListHorizontal extends StatefulWidget {
  const MyShimmerListHorizontal({super.key});

  @override
  State<MyShimmerListHorizontal> createState() => _MyShimmerListHorizontalState();
}

class _MyShimmerListHorizontalState extends State<MyShimmerListHorizontal> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding:const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          MyShimmerVerticalCard(),
          MyShimmerVerticalCard(),
          MyShimmerVerticalCard(),
          MyShimmerVerticalCard(),
          MyShimmerVerticalCard(),
        ],
      ),
    );
  }
}