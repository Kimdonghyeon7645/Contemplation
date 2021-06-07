import 'package:contemplation/dummies/home_content_dummy.dart';
import 'package:contemplation/widgets/bottom_bar.dart';
import 'package:contemplation/widgets/home/home_content_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Container(
            alignment: Alignment.topLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(Get.height * 0.03),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: Get.height * 0.02),
                      Text(" 좋은 하루입니다",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: Get.height * 0.036)),
                      SizedBox(height: Get.height * 0.004),
                      Text("오늘도 처음처럼 참나에 접속해봐요",
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.6),
                              fontSize: Get.height * 0.023)),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(left: Get.width * 0.06, bottom: Get.height * 0.014),
                  child: Text("오늘의 추천 명상",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: Get.height * 0.02)),
                ),
                SizedBox(
                  height: Get.height * 0.17,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    itemExtent: Get.width * 0.4,
                    children: [
                      Container(
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: Get.height * 0.02),
              ],
            ),
            height: Get.height,
            width: Get.width,
            color: Colors.black.withOpacity(0.2),
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/daedun.jpg"), fit: BoxFit.cover),
          ),
        ),
        bottomNavigationBar: BottomBar(),
      ),
    );
  }
}
