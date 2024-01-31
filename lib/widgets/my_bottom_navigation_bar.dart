
import 'package:bloglinux/controllers/page_controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({super.key});

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {

  var controllerPage = Get.put(ControllerPages());

  Widget iconBar(bool enable, IconData icono, int index){
    return InkWell(
      onTap: () {
        controllerPage.changeView(index);
      },
      child: SizedBox(
        //color: Color.fromARGB(146, 89, 82, 19),
        width: 40,
        height: 40,
        child: Column(
          children: [
            Spacer(),
            Icon(
              icono,
              size: 25,
              color: enable ? Color.fromARGB(255, 78, 57, 34) : const Color.fromARGB(74, 0, 0, 0),
            ),
            Spacer(),
            CircleAvatar(
              backgroundColor:enable ? Color.fromARGB(255, 78, 57, 34)  : Colors.black,
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
      margin: const EdgeInsets.fromLTRB(20,0,20,20),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color:Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(5,5),
            blurStyle: BlurStyle.inner
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
              Icons.desktop_windows_rounded,
              0),
            iconBar(
              controllerPage.page.value == 1,
              Icons.terminal_rounded,
              1),
            iconBar(
              controllerPage.page.value == 2,
              Icons.all_inbox_rounded,
              2),
            iconBar(
              controllerPage.page.value == 3,
              Icons.settings_rounded,
              3),
          ],
        )
      ),
    );
  }
}