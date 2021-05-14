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
      debugShowCheckedModeBanner: false,
      title: '관조 - Contemplation',
      theme: lightTheme,
      home: HomePage(),
      initialRoute: "/home",
      getPages: [
        GetPage(name: "/home", page: () => HomePage()),
      ],
    );
  }
}


