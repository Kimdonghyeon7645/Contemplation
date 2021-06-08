import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MeditationRunPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("오늘의 추천 명상", style: TextStyle(color: Colors.black)),
        actions: [
          IconButton(icon: Icon(Icons.favorite_border), onPressed: () {},),
        ],
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/명상02.jpg"),
                  // image: AssetImage("images/명상01.jpg"),
                  fit: BoxFit.cover
              ),
            ),
            child: Container(
              height: Get.height * 0.62,
              width: Get.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(0.2),
                    Colors.black.withOpacity(0),
                    Colors.black.withOpacity(0.4),
                  ],
                )
              ),
              child: Column(
                children: [
                  SizedBox(height: Get.height * 0.05),
                  Text("새벽 10분 명상", style: TextStyle(color: Colors.white, fontSize: Get.height * 0.036)),
                  SizedBox(height: Get.height * 0.006),
                  Text("일상의 명상", style: TextStyle(color: Colors.white.withOpacity(0.6), fontSize: Get.height * 0.02)),
                  Spacer(flex: 1),
                  Container(
                    height: Get.height * 0.11,
                    width: Get.height * 0.11,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white.withOpacity(0.3)
                    ),
                    child: Icon(Icons.play_arrow, color: Colors.white.withOpacity(0.8), size: Get.height * 0.07),
                  ),
                  Spacer(flex: 2),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: Get.height * 0.32,
              width: Get.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(30))
              ),
              padding: EdgeInsets.all(Get.height * 0.04),
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: Get.width * 0.01, right: Get.width * 0.01),
                        child: LinearProgressIndicator(
                          value: 0.6,
                          valueColor: AlwaysStoppedAnimation<Color>(Colors.teal),
                          backgroundColor: Colors.grey.withOpacity(0.2),
                          minHeight: Get.height * 0.008,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: Get.width * (0.79 - (0.79 * 0.4))),
                        height: Get.height * 0.018,
                        width: Get.height * 0.018,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.teal,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: Get.height * 0.01),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("06:01"),
                      Text("09:58"),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
