import 'package:flutter/material.dart';
import 'package:get/get.dart';

final ThemeData lightTheme = ThemeData(
  canvasColor: Color.fromRGBO(0x1F, 0x3C, 0x6B, 1),
  appBarTheme: AppBarTheme(
    backgroundColor: Color.fromRGBO(0x1F, 0x3C, 0x6B, 1),
    iconTheme: IconThemeData(color: Colors.white),
    elevation: 0,
  ),
  textTheme: TextTheme(
    headline2: TextStyle(fontSize: Get.height * 0.04, fontWeight: FontWeight.w100),
  ),
  accentTextTheme: TextTheme(
    headline2: TextStyle(fontSize: Get.height * 0.04, fontWeight: FontWeight.w700),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    showUnselectedLabels: false,
    showSelectedLabels: true,
    backgroundColor: Colors.white,
    unselectedItemColor: Colors.black.withOpacity(0.6),
    selectedItemColor: Color.fromRGBO(0x1F, 0x3C, 0x6B, 1),
    // unselectedItemColor: Colors.white.withOpacity(0.4),
    // selectedItemColor: Colors.white,
    // backgroundColor: Color.fromRGBO(0x22, 0x40, 0x72, 1),
  ),
  tooltipTheme: TooltipThemeData(),
  toggleButtonsTheme: ToggleButtonsThemeData(),
  textSelectionTheme: TextSelectionThemeData(),
  textButtonTheme: TextButtonThemeData(),
  tabBarTheme: TabBarTheme(),
);
