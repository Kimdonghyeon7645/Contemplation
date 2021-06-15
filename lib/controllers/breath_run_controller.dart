import 'dart:async';

import 'package:get/get.dart';

class BreathRunController extends GetxController {
  final List<List<int>> secondList;
  int readySecond = 3;
  int secondIndex = 0;
  int showSecond = 0;
  int breathCount = 0;
  Timer timer;

  BreathRunController(List<List<int>> secondList)
      : this.secondList = secondList {
    timer = Timer.periodic(Duration(seconds: 1), (Timer t) {
      if (readySecond > 0) {
        readySecond--;
      } else {
        if (secondIndex > secondList.length - 1) {
          t.cancel();
        } else if (showSecond > secondList[secondIndex][0]) {
          breathCount++;
          showSecond = 1;
          if (breathCount ~/ 2 > secondList[secondIndex][1]) {
            breathCount = 0;
            secondIndex++;
          }
        } else {
          showSecond++;
        }
        print("showSecond $showSecond, breathCount $breathCount, secondIndex $secondIndex");
      }
      update();
    });
  }
}
