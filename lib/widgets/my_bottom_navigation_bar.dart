
import 'package:bloglinux/controllers/my_navigator_controller.dart';
import 'package:bloglinux/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({super.key});

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {

  var controllerPage = Get.put(MyNavigatorController());

  Widget iconBar(bool enable, IconData icono, int index){
    return InkWell(
      onTap: () {
        controllerPage.changeView(index);
      },
      child:  SizedBox(
        //color: Color.fromARGB(146, 89, 82, 19),
        width: 40,
        height: 40,
        child: Column(
          children: [
            const Spacer(),
            Icon(
              icono,
              size: 25,
              color: enable ? myClrBaseColor: myClrDisable,
            ),
            const Spacer(),
            CircleAvatar(
              backgroundColor:enable ? myClrBaseColor  : myClrDisable,
              radius: enable ? 4 :0,
            )
          ],
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return  Container(
      //margin: const EdgeInsets.fromLTRB(20,0,20,20),
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        color:Colors.white,
        boxShadow: [
          BoxShadow(
            color: myClrShadow,
            offset: Offset(5,5),
            blurRadius: 10,
          )
        ]
      ),
      child:
      Obx(() =>
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            iconBar(
              controllerPage.page.value == 0,
              Icons.grid_on_outlined,
              0),
            iconBar(
              controllerPage.page.value == 1,
              Icons.desktop_windows_rounded,
              1),
            iconBar(
              controllerPage.page.value == 2,
              Icons.terminal_rounded,
              2),
            iconBar(
              controllerPage.page.value == 3,
              Icons.all_inbox_rounded,
              3),
            iconBar(
              controllerPage.page.value == 4,
              Icons.settings_rounded,
              4),
          ],
        )
      ),
    );
  }
}