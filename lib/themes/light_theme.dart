import 'package:flutter/material.dart';
import 'package:get/get.dart';

final ThemeData lightTheme = ThemeData(
  // canvasColor: Color.fromRGBO(237, 229, 216, 1),
  // 앱-바 스타일
  appBarTheme: AppBarTheme(
    // backgroundColor: Color.fromRGBO(237, 229, 216, 1),
    backgroundColor: Colors.white,
    iconTheme: IconThemeData(color: Colors.black.withOpacity(0.8), size: Get.width * 0.07),
    textTheme: TextTheme(
      headline2: TextStyle(
        fontSize: Get.height * 0.038,
        color: Colors.black.withOpacity(0.6),
      ),
    ),
    elevation: 0,
  ),
  // 탭-바 스타일
  tabBarTheme: TabBarTheme(
    unselectedLabelColor: Colors.black,
    labelColor: Colors.blue,
  ),
  // 기본 텍스트 스타일
  textTheme: TextTheme(
    headline1:
        TextStyle(fontSize: Get.height * 0.04, fontWeight: FontWeight.w400),
    headline2: TextStyle(fontSize: Get.height * 0.038),
    headline4: TextStyle(fontSize: Get.height * 0.024),
    headline5: TextStyle(fontSize: Get.height * 0.02),
    headline6: TextStyle(fontSize: Get.height * 0.016, color: Colors.black.withOpacity(0.4), fontWeight: FontWeight.w200),
  ),
  // 강조 텍스트 스타일
  accentTextTheme: TextTheme(
    headline2:
        TextStyle(fontSize: Get.height * 0.04, fontWeight: FontWeight.w700),
  ),
  // 하단 네비게이션-바 스타일
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.grey.withOpacity(0.2),
    showUnselectedLabels: true,
    showSelectedLabels: true,
    elevation: 0,
    unselectedItemColor: Colors.black.withOpacity(0.5),
    selectedItemColor: Colors.black.withOpacity(0.9),
  ),
);
