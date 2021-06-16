import 'package:contemplation/controllers/breath_list_controller.dart';
import 'package:contemplation/models/breath.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllBreathTile extends StatelessWidget {
  final Breath breath;

  AllBreathTile(this.breath);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed("/breath", arguments: breath);
        Get.find<BreathListController>().addBreath(breath);
      },
      child: Container(
        margin: EdgeInsets.only(top: Get.height * 0.008),
        height: Get.height * 0.115,
        width: Get.width * 0.92,
        child: Row(
          children: [
            SizedBox(width: Get.width * 0.02),
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/연꽃02.jpg"), fit: BoxFit.cover),
                  borderRadius: BorderRadius.all(Radius.circular(22))),
              height: Get.height * 0.095,
              width: Get.height * 0.095,
            ),
            SizedBox(width: Get.width * 0.026),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(breath.name, style: TextStyle(fontSize: Get.height * 0.019)),
                SizedBox(height: Get.height * 0.002),
                Text(
                    "${breath.breathSeconds.first[0]}-${breath.breathSeconds.last[0]}초",
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                        fontSize: Get.height * 0.018)),
              ],
            ),
            Spacer(),
            Text(
                "${breath.breathSeconds.map((e) => 2 * e[0] * e[1]).reduce((a, b) => a + b) ~/ 60}분",
                style: TextStyle(color: Colors.black.withOpacity(0.3))),
            SizedBox(width: Get.width * 0.05),
          ],
        ),
        decoration: BoxDecoration(
            color: Colors.amber.withOpacity(0.12),
            borderRadius: BorderRadius.all(Radius.circular(12))),
      ),
    );
  }
}
