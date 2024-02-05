
import 'package:bloglinux/controllers/my_commands_page_controllers.dart';
import 'package:bloglinux/controllers/my_navigator_controller.dart';
import 'package:bloglinux/pages/my_commands_page.dart';
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

  var controllerPage = Get.put(MyNavigatorController());
  var controllerPageCommand = Get.put(MyCommandsPageController());

  @override
  Widget build(BuildContext context) {
    return 
    Obx(() => 
      PageView(
        controller: controllerPage.pageController.value,
        onPageChanged: (value) {
          controllerPage.page.value = value;
          controllerPageCommand.showAppBar.value = false;
        },
        children: widget.pages,
    )
    );
  }
}