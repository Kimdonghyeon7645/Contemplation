import 'package:contemplation/dummies/recommend_mediation_dummy.dart';
import 'package:contemplation/models/meditation_group.dart';
import 'package:contemplation/widgets/bottom_bar.dart';
import 'package:contemplation/widgets/home/home_recommend_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    SizedBox(height: Get.height * 0.05),
                    Text("좋은 하루입니다",
                        style: TextStyle(
                            color: Colors.white, fontSize: Get.height * 0.04, fontWeight: FontWeight.w300)),
                    SizedBox(height: Get.height * 0.004),
                    Text("오늘도 처음처럼 참나에 접속해봐요",
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.7),
                            fontSize: Get.height * 0.023, fontWeight: FontWeight.w300)),
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
                    for (MeditationGroupTileData meditation in recommendMeditationList) HomeRecommendBox(meditation)
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
                Colors.black.withOpacity(0.3),
                Colors.black.withOpacity(0),
                Colors.black.withOpacity(0.6),
              ],
            ),
          ),
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/daedunsan.jpg"), fit: BoxFit.cover),
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
