import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({super.key});

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {

  int position = 0;

  Widget iconBar(bool enable, IconData icono, int index){
    return InkWell(
      onTap: () {
        setState(() {
          position = index;
        });
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
        color:Color.fromARGB(255, 247, 239, 216),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(5,5),
            blurStyle: BlurStyle.inner
          )
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          iconBar(position == 0, Icons.alternate_email_sharp,0),
          iconBar(position == 1, Icons.code,1),
          iconBar(position == 2, Icons.apps_rounded,2),
          iconBar(position == 3, Icons.settings,3),
          

        ],
      ),
    );
  }
}