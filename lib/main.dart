import 'package:bloglinux/firebase_options.dart';
import 'package:bloglinux/pages/my_home_page.dart';
import 'package:bloglinux/pages/my_swiper_page.dart';
import 'package:bloglinux/pages/my_commands_page.dart';
import 'package:bloglinux/pages/my_contruction_page.dart';
import 'package:bloglinux/pages/my_distros_page.dart';
import 'package:bloglinux/style/colors.dart';
import 'package:bloglinux/widgets/my_bottom_navigation_bar.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.android
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Linux All',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      home:  const Scaffold(
        bottomNavigationBar:  MyBottomNavigationBar(),
        backgroundColor:  myClrBackground,
        body: MySwiperPage(
          pages: [
            MyHomePage(),
            MyDistrosListPage(),
            MyCommandsPage(),
            MyConstructionPage(),
            MyConstructionPage(),
          ]
        )
      )      
    );
  }
}


