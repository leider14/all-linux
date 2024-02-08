
import 'dart:async';
import 'package:bloglinux/style/colors.dart';
import 'package:bloglinux/style/font_style.dart';
import 'package:flutter/material.dart';

class MyAds extends StatefulWidget {
  const MyAds({super.key});

  @override
  State<MyAds> createState() => _MyAdsState();
}

class _MyAdsState extends State<MyAds> {
  int positionPhrase = 0;
  late Timer _timer;
  List<String> frases = [
    "En el mundo Linux, la libertad y la personalización son las reglas del juego.",
    "La mejor manera de predecir el futuro es programarlo.",
    "Un buen código es como un buen chiste: no necesita explicación.",
    "Cada distribución Linux es como una obra de arte única, pero todas comparten el mismo espíritu de libertad.",
    "En el mundo del código, la paciencia es la mejor amiga del programador.",
  ];

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 5), (timer) {
      if (positionPhrase < frases.length - 1) {
        positionPhrase++;
      } else {
        positionPhrase = 0;
      }
      if (mounted) {
        setState(() {});
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(500),
              image: DecorationImage(image: Image.asset("assets/img/yo_xd.png").image),
              boxShadow: const [
                BoxShadow(
                  color: myClrShadow,
                  offset: Offset(5,5),
                  blurRadius: 10,
                  //blurStyle: BlurStyle.outer
                )
              ]
            ),
          ),
          const SizedBox(width: 5),
          Expanded(child: 
            Container(
              padding:const EdgeInsets.all(10),
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
              child: 
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Programador 🤫",
                    style: myStlCardAdsTitle,
                  ),
                  Text(
                    frases[positionPhrase],
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: myStlCardAdsSubTitle,
                  ),
                ]
              )
            )
          ),
        ],
      ),
    );
  }
}