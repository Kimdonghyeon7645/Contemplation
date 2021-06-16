import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LastBreathTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed("/breath"),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/연꽃01.jpg"),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        width: Get.width * 0.45,
        margin: EdgeInsets.only(right: Get.width * 0.02),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            color: Colors.black.withOpacity(0.26),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: Get.height * 0.01),
              Text(
                "5초대 단전 호흡",
                style: TextStyle(color: Colors.white, fontSize: Get.height * 0.019, fontWeight: FontWeight.w400),
              ),
              SizedBox(height: Get.height * 0.01),
              Text(
                "8-12초",
                style: TextStyle(color: Colors.white.withOpacity(0.7), fontSize: Get.height * 0.022, fontWeight: FontWeight.w300),
              ),
              Text(
                "10분",
                style: TextStyle(color: Colors.white.withOpacity(0.7), fontSize: Get.height * 0.022, fontWeight: FontWeight.w300),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
