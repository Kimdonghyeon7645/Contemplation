import 'package:contemplation/controllers/breath_run_controller.dart';
import 'package:contemplation/models/breath.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BreathRunPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Breath breath = Get.arguments;
    Get.put(BreathRunController(breath.breathSeconds));
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Get.find<BreathRunController>().timer.cancel();
              Get.back();
            }),
        title: Text(breath.name, style: Get.theme.appBarTheme.titleTextStyle),
      ),
      body: GetBuilder<BreathRunController>(
        builder: (ctr) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                "${(ctr.showTime ~/ 60).toString().padLeft(2, "0")}:${(ctr.showTime % 60).toString().padLeft(2, "0")}",
                style: TextStyle(
                    color: Colors.black.withOpacity(0.6),
                    fontSize: Get.height * 0.029,
                    fontWeight: FontWeight.w300)),
            SizedBox(height: Get.height * 0.01),
            SizedBox(
              width: Get.width,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: Get.width * 0.5,
                    width: Get.width * 0.5,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.withOpacity(0.16),
                      // border: Border.all(width: Get.height * 0.02, color: Colors.black.withOpacity(0.1)),
                    ),
                  ),
                  Container(
                    height: Get.width * 0.22,
                    width: Get.width * 0.22,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: ctr.breathCount % 2 == 0
                          ? Colors.redAccent.withOpacity(0.5)
                          : Colors.blueAccent.withOpacity(0.5),
                    ),
                  ),
                  AnimatedContainer(
                    duration: Duration(
                        seconds: ctr.secondIndex < ctr.secondList.length
                            ? ctr.secondList[ctr.secondIndex][0] - 1
                            : 0),
                    height: ctr.breathCount % 2 == 0 && ctr.readySecond < 1
                        ? Get.width * 0.5
                        : Get.width * 0.22,
                    width: ctr.breathCount % 2 == 0 && ctr.readySecond < 1
                        ? Get.width * 0.5
                        : Get.width * 0.22,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: ctr.breathCount % 2 == 0
                          ? Colors.redAccent.withOpacity(0.7)
                          : Colors.blueAccent.withOpacity(0.7),
                    ),
                  ),
                  Text(
                      (ctr.readySecond > 0 ? ctr.readySecond : ctr.showSecond)
                          .toString(),
                      style: TextStyle(
                          fontSize: Get.height * 0.055,
                          fontWeight: FontWeight.w300)),
                ],
              ),
            ),
            SizedBox(height: Get.height * 0.022),
            Text(
                ctr.readySecond > 0
                    ? "????????? ??????????????????"
                    : ctr.breathCount % 2 == 0
                        ? " ??????????????? "
                        : " ???????????? ",
                style: TextStyle(
                    color: Colors.black.withOpacity(0.6),
                    fontSize: Get.height * 0.026,
                    fontWeight: FontWeight.w300)),
            SizedBox(height: Get.height * 0.1),
          ],
        ),
      ),
    );
  }
}
