import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControllerPages extends GetxController{
  RxInt page = 0.obs;
  Rx<PageController> pageController = PageController().obs ;

  void changeView(int page){
    pageController.value.animateToPage(
      page,
      duration: const Duration(milliseconds: 200),
      curve: Curves.linear
    );
  }
}