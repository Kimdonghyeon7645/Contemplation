import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ButtonTabBar extends StatelessWidget {
  final List<String> tabTitles;

  ButtonTabBar(this.tabTitles);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 0.07 * Get.height,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          for (int i = 0; i < tabTitles.length; i++)
            Container(
              child: Text(tabTitles[i]),
              margin: EdgeInsets.fromLTRB(
                  0.03 * Get.width,
                  0.015 * Get.height,
                  0.03 * Get.width,
                  0.015 * Get.height),
              padding: EdgeInsets.fromLTRB(
                  0.025 * Get.width, 0, 0.025 * Get.width, 0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: Colors.grey,
              ),
            ),
        ],
      ),
    );
  }
}
