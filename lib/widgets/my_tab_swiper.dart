

import 'package:bloglinux/controllers/my_commands_page_controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyTabSwiper extends StatefulWidget {
  const MyTabSwiper({super.key});

  @override
  State<MyTabSwiper> createState() => _MyTabSwiperState();
}

class _MyTabSwiperState extends State<MyTabSwiper> {

  var controllerPage = Get.put(MyCommandsPageController());
  
  Widget wdgButton(String name, int id, IconData icon){
    return GestureDetector(
      onTap: () {
        controllerPage.idCategory.value = id;
      },

      child:  Obx(()=>
        Container( 
          margin: const EdgeInsets.only(left: 5),     
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: id ==  controllerPage.idCategory.value? Colors.black : Colors.white60
          ),
          child: Row(
            children: [
              Icon(icon,
                color: id == controllerPage.idCategory.value? Colors.white : Colors.black,
                size: 20,
              ),
              const SizedBox(width: 5,),
              Text(name,
              
              style: TextStyle(
                color: id == controllerPage.idCategory.value? Colors.white : Colors.black,
                fontWeight: 0 == controllerPage.idCategory.value? FontWeight.bold : FontWeight.normal
              ),
            ),
            ],
          )
        )
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: 
        Row(
          children: [
            const SizedBox(width: 20,),
            wdgButton("Navegación", 0, Icons.navigate_next_rounded),
            wdgButton("Directorios", 1, Icons.folder),
            wdgButton("Contenido", 2, Icons.inbox),
            wdgButton("Edición", 3, Icons.edit),
            wdgButton("Procesos", 4, Icons.settings),
            wdgButton("Usuarios y permisos", 5, Icons.person),
            wdgButton("Red", 6, Icons.wifi),
            wdgButton("Software", 7, Icons.apps),
            wdgButton("Búsqueda", 8, Icons.search),
            const SizedBox(width: 20,),
            //wdgButton("Carpeta",9),
            //wdgButton("Carpetas",10),
          ],
        ),
    );
  }
}