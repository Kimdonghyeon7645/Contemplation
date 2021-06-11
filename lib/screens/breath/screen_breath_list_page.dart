import 'package:contemplation/widgets/bottom_bar.dart';
import 'package:flutter/cupertino.dart';
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
              child: Text("최근 수련 다시하기",style: TextStyle(fontSize: Get.height * 0.02, color: Colors.black.withOpacity(0.5))),
            ),
            SizedBox(height: Get.height * 0.01),
            SizedBox(
              height: Get.width * 0.3,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: Get.width * 0.03),
                  for (int i in [1, 2, 3])
                  GestureDetector(
                    onTap: () => Get.toNamed("/breath"),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        color: Colors.amber.withOpacity(0.35)
                      ),
                      width: Get.width * 0.45,
                      margin: EdgeInsets.only(right: Get.width * 0.02),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        child: Stack(
                          children: [
                            Positioned(
                              left: - Get.width * 0.016,
                              top: - Get.width * 0.016,
                              child: Container(
                                height: Get.height * 0.08,
                                width: Get.height * 0.08,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.amber.withOpacity(0.3)
                                ),
                                child: Icon(MdiIcons.tailwind, color: Colors.white, size: Get.height * 0.036),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: Get.height * 0.08),
                                Text("8초~12초"),
                                Text("10분"),
                              ],
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
              child: Text("전체 목록",style: TextStyle(fontSize: Get.height * 0.021, color: Colors.black.withOpacity(0.5))),
            ),
            for (int i = 0; i < 10; i++)
              Container(
                margin: EdgeInsets.only(top: Get.height * 0.01),
                height: Get.height * 0.1,
                width: Get.width * 0.9,
                color: Colors.amber.withOpacity(0.14),
              )
          ],
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
