import 'dart:async';

import 'package:get/get.dart';

class BreathRunController extends GetxController {
  final List<List<int>> secondList;
  int readySecond = 3;
  int showTime = 0;
  int showSecond = 1;
  int secondIndex = 0;
  int breathCount = 0;
  Timer timer;

  BreathRunController(List<List<int>> secondList)
      : this.secondList = secondList {
    showTime = secondList.map((e) => e.first * e.last * 2).reduce((a, b) => a + b);
    timer = Timer.periodic(Duration(seconds: 1), (Timer t) {
      if (readySecond > 0) {
        readySecond--;
      } else {
        if (secondIndex > secondList.length - 1) {
          t.cancel();
        } else if (showSecond >= secondList[secondIndex][0]) {
          breathCount++;
          showSecond = 1;
          if (breathCount ~/ 2 >= secondList[secondIndex][1]) {
            breathCount = 0;
            secondIndex++;
          }
        } else {
          showSecond++;
        }
        showTime--;
      }
      update();
    });
  }
}
