import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MedicationTile extends StatelessWidget {
  final String title, subText;

  MedicationTile(this.title, this.subText);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: Get.width * 0.3,
          height: Get.height * 0.18,
          color: Colors.redAccent.withOpacity(0.3),
          alignment: Alignment.center,
          child: Text("dummy", style: TextStyle(color: Colors.black.withOpacity(0.3))),
        ),
        SizedBox(width: Get.width * 0.04),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: Get.theme.textTheme.headline4),
            SizedBox(height: Get.height * 0.005),
            Text(subText, style: Get.theme.textTheme.headline6),
            SizedBox(height: Get.height * 0.014),
            Row(
              children: [
                SizedBox(
                  child: LinearProgressIndicator(
                    value: 0,
                    backgroundColor: Colors.grey.withOpacity(0.3),
                  ),
                  width: Get.width * 0.3,
                  height: Get.width * 0.016,
                ),
                SizedBox(width: Get.width * 0.03),
                Text("0%"),
              ],
            )
          ],
        )
      ],
    );
  }
}
