import 'package:contemplation/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class BreathListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("호흡", style: Get.theme.appBarTheme.titleTextStyle),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: Get.height * 0.03),
            Padding(
              padding: EdgeInsets.only(left: Get.width * 0.04),
              child: Text("최근 수련 다시하기",
                  style: TextStyle(
                      fontSize: Get.height * 0.02,
                      color: Colors.black.withOpacity(0.5))),
            ),
            SizedBox(height: Get.height * 0.01),
            SizedBox(
              height: Get.width * 0.32,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: Get.width * 0.03),
                  for (int i in [1, 2, 3])
                    GestureDetector(
                      onTap: () => Get.toNamed("/breath"),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("images/daedunsan.jpg"),
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
                    ),
                  SizedBox(width: Get.width * 0.02),
                ],
              ),
            ),
            SizedBox(height: Get.height * 0.04),
            Padding(
              padding: EdgeInsets.only(left: Get.width * 0.04),
              child: Text("전체 목록",
                  style: TextStyle(
                      fontSize: Get.height * 0.02,
                      color: Colors.black.withOpacity(0.5))),
            ),
            Center(
              child: Column(
                children: [
                  for (int i = 0; i < 10; i++)
                    Container(
                      margin: EdgeInsets.only(top: Get.height * 0.01),
                      height: Get.height * 0.105,
                      width: Get.width * 0.92,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("기본 호흡"),
                          Text("3-6초"),
                          Text("20분"),
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Colors.amber.withOpacity(0.14),
                          borderRadius: BorderRadius.all(Radius.circular(6))),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
