import 'package:contemplation/controllers/record_controller.dart';
import 'package:contemplation/widgets/record/calendar_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RecordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(RecordController());
    return Column(
      children: [
        for (int number =
            Get.find<RecordController>().leftmostMotionYear;
        number < Get.find<RecordController>().rightmostMotionYear;
        number = (number % 100 > 11)
            ? (number ~/ 100 + 1) * 100 + 2
            : number + 1)
          CalendarBox(number, MODE.DAY)
      ],
    );
  }
}
