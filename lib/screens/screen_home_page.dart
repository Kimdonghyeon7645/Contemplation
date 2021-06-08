import 'package:contemplation/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
                  padding: EdgeInsets.only(
                      left: Get.width * 0.06, bottom: Get.height * 0.014),
                  child: Text("오늘의 추천 명상",
                      style: TextStyle(
                          color: Colors.white, fontSize: Get.height * 0.02)),
                ),
                SizedBox(
                  height: Get.height * 0.173,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      for (int i in [1, 2, 3, 4, 5, 6])
                        Container(
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
                    ],
                  ),
                ),
                SizedBox(height: Get.height * 0.026),
              ],
            ),
            height: Get.height,
            width: Get.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withOpacity(0.55),
                  Colors.black.withOpacity(0),
                  Colors.black.withOpacity(0.6),
                ],
              ),
            ),
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
