import 'package:contemplation/controllers/breath_list_controller.dart';
import 'package:contemplation/dummies/breath_dummy.dart';
import 'package:contemplation/models/breath.dart';
import 'package:contemplation/widgets/bottom_bar.dart';
import 'package:contemplation/widgets/breath/all_breath_tile.dart';
import 'package:contemplation/widgets/breath/last_breath_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BreathListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(BreathListController());
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
              child: GetBuilder<BreathListController>(
                builder: (ctr) => ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(width: Get.width * 0.03),
                    for (Breath breath in ctr.lastBreathList) LastBreathTile(breath),
                    SizedBox(width: Get.width * 0.02),
                  ],
                ),
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
                  for (Breath breath in breathList) AllBreathTile(breath),
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
