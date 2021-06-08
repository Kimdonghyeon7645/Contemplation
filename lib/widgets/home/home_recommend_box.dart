import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeRecommendBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed("/meditation"),
      child: Container(
        margin: EdgeInsets.only(left: Get.width * 0.02),
        child: Container(
          width: Get.width * 0.4,
          padding: EdgeInsets.only(top: Get.height * 0.106),
          child: Column(
            children: [
              Text("마음을 비우는 명상",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: Get.height * 0.018)),
              Text("10분",
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.7),
                      fontSize: Get.height * 0.016)),
            ],
          ),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(0),
                    Colors.black.withOpacity(0.5),
                  ]
              )
          ),
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
              // image: AssetImage("images/홍익01.jpg"),
                image: AssetImage("images/명상01.jpg"),
                fit: BoxFit.cover),
            borderRadius:
            BorderRadius.all(Radius.circular(15))),
      ),
    );
  }
}
