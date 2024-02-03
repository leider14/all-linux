
import 'package:bloglinux/controllers/my_commands_page_controllers.dart';
import 'package:bloglinux/data/data_commands.dart';
import 'package:bloglinux/style/colors.dart';
import 'package:bloglinux/widgets/my_container_button.dart';
import 'package:bloglinux/widgets/my_tab_swiper.dart';
import 'package:bloglinux/widgets/my_title_app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyCommandsPage extends StatefulWidget {
  const MyCommandsPage({super.key});

  @override
  State<MyCommandsPage> createState() => _MyCommandsPageState();
}

class _MyCommandsPageState extends State<MyCommandsPage> {

  var controllerPage = Get.put(MyCommandsPageController());
  ScrollController scrollController = ScrollController();
  

  @override
  void initState() {
    scrollController.addListener(() {
      controllerPage.showAppBar.value = scrollController.offset > 150;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return 
    Stack(children: [
      SingleChildScrollView(
        controller: scrollController,
        child: Column(
            children: [
              const MyTitleApp(
                title: "Comandos Linux",
                subtitle: "¡Bienvenido a la Ventana de Comandos de Linux, tu portal hacia el poderoso mundo de la línea de comandos! Aquí, te proporcionaremos una extensa colección de comandos esenciales y avanzados para que aproveches al máximo tu experiencia con sistemas basados en Linux.",
              ),
              const MyTabSwiper(),
              Obx(() => wdgListCommand())
            ]
          )
        ),
        
      
      Obx(() =>  
        AnimatedPositioned(
          top: controllerPage.showAppBar.value ? 0 : -200,
          curve: Curves.decelerate,
          duration: const Duration(milliseconds: 200),
          child:Container(
            width: context.width,
            padding: const EdgeInsets.only(bottom: 20),
            decoration: const BoxDecoration(
              color: myClrBackgroundCard,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  color: myClrShadow,
                  offset: Offset(0,20),
                  blurRadius: 20
                )
              ]
            ),
            child: const Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyTitleApp(title: "Comandos Linux",),
                MyTabSwiper(),
              ],
            )
          )
        )
      )        
    ]);
  }

  Widget wdgCardCommand({
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


    return Container(
      width: context.width,
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10
      ),
      padding: const EdgeInsets.all(10),
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
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if(title!=null) Text(
            title,
            textScaler: const TextScaler.linear(1.1),
            style: const TextStyle(
              fontWeight: FontWeight.bold
            ),
          ),
          if(title!=null)  const SizedBox(height: 10,),
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


  Widget wdgListCommand(){
    List<Widget> widgets = [];
    for (var command in dataListCommands) {
      if(command.type == controllerPage.idCategory.value+1){
        widgets.add(
          wdgCardCommand(
            title: command.title,
            text: command.description,
            comands: command.commands
          )
        );
      }
    }

    return Column(
      children: widgets,
    );
  }
}