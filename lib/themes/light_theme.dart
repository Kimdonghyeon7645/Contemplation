import 'package:flutter/material.dart';
import 'package:get/get.dart';

final ThemeData lightTheme = ThemeData(
  // canvasColor: Color.fromRGBO(237, 229, 216, 1),
  //
  appBarTheme: AppBarTheme(
    backgroundColor: Color.fromRGBO(237, 229, 216, 1),
    iconTheme: IconThemeData(size: Get.height * 0.035),
    elevation: 0,
  ),
  //
  textTheme: TextTheme(
    headline2:
        TextStyle(fontSize: Get.height * 0.04, fontWeight: FontWeight.w100),
    headline4: TextStyle(fontSize: Get.height * 0.024),
    headline5: TextStyle(fontSize: Get.height * 0.02),
    headline6: TextStyle(fontSize: Get.height * 0.018, color: Colors.grey),
  ),
  //
  accentTextTheme: TextTheme(
    headline2:
        TextStyle(fontSize: Get.height * 0.04, fontWeight: FontWeight.w700),
  ),
  //
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    showUnselectedLabels: true,
    showSelectedLabels: true,
    elevation: 0,
    unselectedItemColor: Colors.black.withOpacity(0.6),
    selectedItemColor: Colors.black.withOpacity(0.9),
    backgroundColor: Colors.white
  ),
);
