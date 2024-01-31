
import 'package:bloglinux/controllers/page_controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MySwiperPage extends StatefulWidget {
  final List<Widget> pages;
  const MySwiperPage({
    required this.pages,
    super.key
  });

  @override
  State<MySwiperPage> createState() => _MySwiperPageState();
}

class _MySwiperPageState extends State<MySwiperPage> {

  var controllerPage = Get.put(ControllerPages());

  @override
  Widget build(BuildContext context) {
    return 
    Obx(() => 
      PageView(
        controller: controllerPage.pageController.value,
        onPageChanged: (value) {
          controllerPage.page.value = value;
        },
        children: widget.pages,
    )
    );
  }
}