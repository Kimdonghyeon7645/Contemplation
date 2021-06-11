import 'package:contemplation/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BreathListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("호흡", style: Get.theme.appBarTheme.titleTextStyle),
      ),
      body: Column(
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
              itemExtent: Get.width * 0.47,
              children: [
                for (int i in [1, 2, 3])
                GestureDetector(
                  onTap: () => Get.toNamed("/breath"),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      color: Colors.amber.withOpacity(0.26)
                    ),
                    margin: EdgeInsets.only(left: Get.width * 0.02),
                    padding: EdgeInsets.all(Get.width * 0.02),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("8초~12초"),
                        Text("10분"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
