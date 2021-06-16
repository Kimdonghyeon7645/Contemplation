import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllBreathTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: Get.height * 0.008),
      height: Get.height * 0.115,
      width: Get.width * 0.92,
      child: Row(
        children: [
          SizedBox(width: Get.width * 0.02),
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/연꽃02.jpg"),
                    fit: BoxFit.cover
                ),
                borderRadius: BorderRadius.all(Radius.circular(22))
            ),
            height: Get.height * 0.095,
            width: Get.height * 0.095,
          ),
          SizedBox(width: Get.width * 0.025),
          Text("기본 호흡", style: TextStyle(fontSize: Get.height * 0.02)),
          SizedBox(width: Get.width * 0.04),
          Text("3-6초", style: TextStyle(color: Colors.black.withOpacity(0.5))),
          Spacer(),
          Text("20분", style: TextStyle(color: Colors.black.withOpacity(0.3))),
          SizedBox(width: Get.width * 0.05),
        ],
      ),
      decoration: BoxDecoration(
          color: Colors.amber.withOpacity(0.12),
          borderRadius: BorderRadius.all(Radius.circular(12))),
    );
  }
}
