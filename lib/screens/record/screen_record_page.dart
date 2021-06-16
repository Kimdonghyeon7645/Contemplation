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
      appBar: AppBar(
        title: Text(
          "기록",
          style: Get.theme.appBarTheme.titleTextStyle,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: Get.height * 0.02),
          Padding(
            padding: EdgeInsets.only(left: Get.width * 0.06),
            child: Text(
              "현재 레벨",
              style: TextStyle(
                  fontWeight: FontWeight.w800, fontSize: Get.height * 0.022),
            ),
          ),
          SizedBox(height: Get.height * 0.02),
          Row(
            children: [
              Spacer(),
              Text("레벨",
                  style: TextStyle(
                      fontSize: Get.height * 0.02,
                      fontWeight: FontWeight.w200)),
              SizedBox(width: Get.width * 0.03),
              Text("1",
                  style: TextStyle(
                      color: Colors.indigo,
                      fontSize: Get.height * 0.06,
                      fontWeight: FontWeight.w500)),
              SizedBox(width: Get.width * 0.01),
              Text("LV",
                  style: TextStyle(
                      color: Colors.indigo, fontSize: Get.height * 0.016)),
              Spacer(),
              Text("경험치"),
              SizedBox(width: Get.width * 0.03),
              Text("0",
                  style: TextStyle(
                      color: Colors.indigo,
                      fontSize: Get.height * 0.06,
                      fontWeight: FontWeight.w500)),
              SizedBox(width: Get.width * 0.01),
              Text("exp",
                  style: TextStyle(
                      color: Colors.indigo, fontSize: Get.height * 0.016)),
              Spacer(),
            ],
          ),
          SizedBox(height: Get.height * 0.05),
          GetBuilder<RecordController>(
            builder: (ctr) => Row(
              children: [
                SizedBox(width: Get.width * 0.06),
                Text("날짜별 기록", style: TextStyle(fontSize: Get.height * 0.022, fontWeight: FontWeight.w800)),
                Spacer(),
                Text("${ctr.currentViewMonth}월",
                    style: TextStyle(fontSize: Get.height * 0.026)),
                SizedBox(width: Get.width * 0.02),
                Text("${ctr.currentViewYear}년",
                    style: TextStyle(fontSize: Get.height * 0.018)),
                SizedBox(width: Get.width * 0.05),
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
          SizedBox(height: Get.height * 0.02),
        ],
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
