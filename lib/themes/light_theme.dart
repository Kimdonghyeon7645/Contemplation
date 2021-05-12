import 'package:flutter/material.dart';
import 'package:get/get.dart';

final ThemeData lightTheme = ThemeData(
  canvasColor: Color.fromRGBO(0x1C, 0x35, 0x5E, 1),
  appBarTheme: AppBarTheme(
    backgroundColor: Color.fromRGBO(0x1C, 0x35, 0x5E, 1),
    iconTheme: IconThemeData(color: Colors.white, size: Get.height * 0.035),
    elevation: 0,
  ),
  textTheme: TextTheme(
    headline2: TextStyle(fontSize: Get.height * 0.04, fontWeight: FontWeight.w100),
    headline4: TextStyle(fontSize: Get.height * 0.024),
    headline5: TextStyle(fontSize: Get.height * 0.02),
    headline6: TextStyle(fontSize: Get.height * 0.018, color: Colors.grey),
  ),
  accentTextTheme: TextTheme(
    headline2: TextStyle(fontSize: Get.height * 0.04, fontWeight: FontWeight.w700),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    showUnselectedLabels: true,
    showSelectedLabels: true,
    elevation: 0,
    backgroundColor: Color.fromRGBO(245, 245, 245, 1),
    // backgroundColor: Color.fromRGBO(0x22, 0x40, 0x72, 1),
    unselectedItemColor: Colors.black.withOpacity(0.6),
    // unselectedItemColor: Colors.white.withOpacity(0.4),
    selectedItemColor: Color.fromRGBO(0x1F, 0x3C, 0x6B, 1),
    // selectedItemColor: Colors.white,
  ),
  tooltipTheme: TooltipThemeData(),
  toggleButtonsTheme: ToggleButtonsThemeData(),
  textSelectionTheme: TextSelectionThemeData(),
  textButtonTheme: TextButtonThemeData(),
  tabBarTheme: TabBarTheme(),
);
