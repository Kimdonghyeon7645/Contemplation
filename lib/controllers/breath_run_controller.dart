import 'dart:async';

import 'package:get/get.dart';

class BreathRunController extends GetxController {
  int readySecond = 3;
  Timer timer;

  @override
  void onInit() {
    super.onInit();
    timer = Timer.periodic(Duration(seconds: 1), (Timer t) {
      readySecond--;
      if (readySecond < 1) {
        print("죽어라");
        t.cancel();
      }
      update();
    });
  }
}
