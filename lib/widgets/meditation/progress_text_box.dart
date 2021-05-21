import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProgressTextBox extends StatelessWidget {
  final int allMeditation, finishMeditation;

  ProgressTextBox(this.allMeditation, this.finishMeditation);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          SizedBox(width: Get.width * 0.04),
          Text("$allMeditation 개의 명상", style: Get.theme.accentTextTheme.headline5),
          Spacer(),
          SizedBox(
            width: Get.width * 0.18,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: LinearProgressIndicator(
                value: finishMeditation / allMeditation,
                minHeight: Get.height * 0.01,
                backgroundColor: Colors.grey.withOpacity(0.2),
              ),
            ),
          ),
          SizedBox(width: Get.width * 0.02),
          Text((finishMeditation/allMeditation).toString() + "%"),
          SizedBox(width: Get.width * 0.04),
        ],
      ),
      height: Get.height * 0.065,
      width: Get.width * 0.92,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 0.6,
            blurRadius: 1,
            offset: Offset(0, 1),
          ),
        ],
        color: Colors.white,
      ),
    );
  }
}