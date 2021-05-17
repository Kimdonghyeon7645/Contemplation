import 'package:contemplation/screens/breath/screen_breath_list_page.dart';
import 'package:contemplation/screens/meditation/screen_meditation_list_page.dart';
import 'package:contemplation/screens/screen_home_page.dart';
import 'package:contemplation/themes/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: lightTheme,
      debugShowCheckedModeBanner: false,
      title: '관조 - Contemplation',
      initialRoute: "/",    // home: 속성과 중복해서 쓰지 않도록 주의
      defaultTransition: Transition.noTransition,
      getPages: [
        GetPage(name: "/", page: () => HomePage()),
        GetPage(name: "/meditation/list", page: () => MeditationListPage()),
        GetPage(name: "/breath/list", page: () => BreathListPage()),
      ],
    );
  }
}


