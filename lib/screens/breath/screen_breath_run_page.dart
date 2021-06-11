import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BreathRunPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("8초-10초 20분 호흡", style: Get.theme.appBarTheme.titleTextStyle),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // SizedBox(height: Get.height * 0.1),
          Text("09:10", style: TextStyle(color: Colors.black.withOpacity(0.6), fontSize: Get.height * 0.025)),
          SizedBox(height: Get.height * 0.014),
          SizedBox(
            width: Get.width,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: Get.width * 0.5,
                  width: Get.width * 0.5,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey.withOpacity(0.16),
                    // border: Border.all(width: Get.height * 0.02, color: Colors.black.withOpacity(0.1)),
                  ),
                ),
                Container(
                  height: Get.width * 0.2,
                  width: Get.width * 0.2,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    // color: Colors.redAccent.withOpacity(0.7),
                    color: Colors.blueAccent.withOpacity(0.7),
                  ),
                ),
                Container(
                  height: Get.width * 0.4,
                  width: Get.width * 0.4,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    // color: Colors.redAccent.withOpacity(0.7),
                    color: Colors.blueAccent.withOpacity(0.5),
                  ),
                ),
                Text("3", style: TextStyle(
                    fontSize: Get.height * 0.07,
                    color: Colors.white
                )),
              ],
            ),
          ),
          SizedBox(height: Get.height * 0.022),
          Text("내쉬세요", style: TextStyle(color: Colors.black.withOpacity(0.6), fontSize: Get.height * 0.027)),
        ],
      ),
    );
  }
}
