import 'package:bloglinux/controllers/comands_controllers.dart';
import 'package:bloglinux/widgets/myContainer.dart';
import 'package:bloglinux/widgets/my_card_distro_horizontal.dart';
import 'package:bloglinux/widgets/my_tab_swiper.dart';
import 'package:bloglinux/widgets/title.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageComands extends StatefulWidget {
  const PageComands({super.key});

  @override
  State<PageComands> createState() => _PageComandsState();
}

class _PageComandsState extends State<PageComands> {

  //var pageController = Get.put(ControllerComads());

  @override
  Widget build(BuildContext context) {
    return 
    Stack(children: [
      CustomScrollView(
        slivers: [
          SliverList(
            delegate:SliverChildListDelegate(
              [
              MyTitleApp(
                title: "Comandos Linux",
                subtitle: "¡Bienvenido a la Ventana de Comandos de Linux, tu portal hacia el poderoso mundo de la línea de comandos! Aquí, te proporcionaremos una extensa colección de comandos esenciales y avanzados para que aproveches al máximo tu experiencia con sistemas basados en Linux.",
                
              ),

              MyTabSwiper(),
              listCommand(
                title: "Navegar en carpetas",
                text: "En el contexto de Linux, \"cd\" es un comando que se utiliza para cambiar el directorio actual en la línea de comandos. \"cd\" proviene de \"change directory\". Cuando ejecutas cd seguido de un nombre de directorio, te mueves al directorio especificado. Por ejemplo:",
                comands: [
                  "cd nombre_del_directorio",
                  "cd /opt/android_studio",
                  "cd /home/docslinux",
                ]
              ),
              listCommand(
                title: "Navegar en carpetas",
                text: "En el contexto de Linux, \"cd\" es un comando que se utiliza para cambiar el directorio actual en la línea de comandos. \"cd\" proviene de \"change directory\". Cuando ejecutas cd seguido de un nombre de directorio, te mueves al directorio especificado. Por ejemplo:",
                comands: [
                  "cd nombre_del_directorio",
                  "cd /home/docslinux",
                ]
              ),
              listCommand(
                title: "Navegar en carpetas",
                text: "En el contexto de Linux, \"cd\" es un comando que se utiliza para cambiar el directorio actual en la línea de comandos. \"cd\" proviene de \"change directory\". Cuando ejecutas cd seguido de un nombre de directorio, te mueves al directorio especificado. Por ejemplo:",
                
              ),
              listCommand(
                title: "Navegar en carpetas",
                text: "En el contexto de Linux, \"cd\" es un comando que se utiliza para cambiar el directorio actual en la línea de comandos. \"cd\" proviene de \"change directory\". Cuando ejecutas cd seguido de un nombre de directorio, te mueves al directorio especificado. Por ejemplo:",
                comands: [
                  "cd nombre_del_directorio",
                  "cd /home/docslinux",
                ]
              ),
              listCommand(
                title: "Navegar en carpetas",
                text: "En el contexto de Linux, \"cd\" es un comando que se utiliza para cambiar el directorio actual en la línea de comandos. \"cd\" proviene de \"change directory\". Cuando ejecutas cd seguido de un nombre de directorio, te mueves al directorio especificado. Por ejemplo:",
                comands: [
                  "cd nombre_del_directorio"
                ]
              ),
              listCommand(
                title: "Navegar en carpetas",
                text: "En el contexto de Linux, \"cd\" es un comando que se utiliza para cambiar el directorio actual en la línea de comandos. \"cd\" proviene de \"change directory\". Cuando ejecutas cd seguido de un nombre de directorio, te mueves al directorio especificado. Por ejemplo:",
                comands: [
                  "cd nombre_del_directorio"
                ]
              ),
              listCommand(
                title: "Navegar en carpetas",
                text: "En el contexto de Linux, \"cd\" es un comando que se utiliza para cambiar el directorio actual en la línea de comandos. \"cd\" proviene de \"change directory\". Cuando ejecutas cd seguido de un nombre de directorio, te mueves al directorio especificado. Por ejemplo:",
                comands: [
                  "cd nombre_del_directorio"
                ]
              ),
              ]
            )
          )
        ],
      ),
    ]);
  }

  Widget listCommand({
     String? title,
     required String text,
     List<String>? comands
    }
  ){

    List<Widget> listCommands = [];
    if(comands != null){
      listCommands = comands.map(
        (comand) => 
        Text(
          comand,
          textScaler: const TextScaler.linear(1.1),
          style: const TextStyle(
            fontWeight: FontWeight.bold
          ),
        ),
        
      ).toList();
    }


    return MyContainer(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if(title!=null) Text(
              title,
              textScaler: TextScaler.linear(1.1),
              style: const TextStyle(
                fontWeight: FontWeight.bold
              ),
            ),
            if(title!=null)  SizedBox(height: 10,),
            Text(text),
            if(comands!=null)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: listCommands
                )
              )
            
          ],
        )
      
    );
  }
}