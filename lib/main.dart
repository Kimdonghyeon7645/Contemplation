import 'package:contemplation/controllers/bottom_bar_index_controller.dart';
import 'package:contemplation/screens/breath/screen_breath_list_page.dart';
import 'package:contemplation/screens/meditation/screen_meditation_group_page.dart';
import 'package:contemplation/screens/meditation/screen_meditation_list_page.dart';
import 'package:contemplation/screens/meditation/screen_meditation_run_page.dart';
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
    Get.put(BottomBarIndexController());
    return GetMaterialApp(
      theme: lightTheme,
      debugShowCheckedModeBanner: false,
      title: '관조 - Contemplation',
      // initialRoute: "/",    // home: 속성과 중복해서 쓰지 않도록 주의
      home: HomePage(),
      defaultTransition: Transition.noTransition,
      getPages: [
        GetPage(name: "/", page: () => HomePage()),
        GetPage(name: "/meditation/list", page: () => MeditationListPage()),
        GetPage(name: "/meditation/group", page: () => MeditationGroupPage()),
        GetPage(name: "/meditation", page: () => MeditationRunPage()),
        GetPage(name: "/breath/list", page: () => BreathListPage()),
      ],
    );
  }
}


