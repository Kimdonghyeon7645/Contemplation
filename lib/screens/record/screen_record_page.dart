import 'package:contemplation/controllers/record_controller.dart';
import 'package:contemplation/widgets/bottom_bar.dart';
import 'package:contemplation/widgets/record/calendar_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RecordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(RecordController());
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: Get.height * 0.04),
          GetBuilder<RecordController>(
            builder: (ctr) => Row(
              children: [
                SizedBox(width: Get.width * 0.06),
                Text("${ctr.currentViewMonth}월",
                    style: TextStyle(fontSize: Get.height * 0.034)),
                SizedBox(width: Get.width * 0.02),
                Text("${ctr.currentViewYear}년",
                    style: TextStyle(fontSize: Get.height * 0.02)),
              ],
            ),
          ),
          SizedBox(height: Get.height * 0.01),
          SizedBox(
            height: Get.height * 0.4,
            child: PageView(
              children: [
                for (int number =
                    Get.find<RecordController>().leftmostMotionYear;
                number < Get.find<RecordController>().rightmostMotionYear;
                number = (number % 100 > 11)
                    ? (number ~/ 100 + 1) * 100 + 2
                    : number + 1)
                  CalendarBox(number, MODE.DAY)
              ],
              onPageChanged: (int index) =>
                  Get.find<RecordController>().changeMonth(index),
              controller: PageController(
                  initialPage: Get.find<RecordController>().startIndex),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
