import 'package:get/get.dart';

class BottomBarIndexController extends GetxController {
  int index = 0;
  List pages = [
    "/",
    "/meditation/list",
    "/breath/list",
    "/record",
  ];

  setIndex(int i) {
    index = i;
    Get.offAllNamed(pages[i]);
    update();
  }
}
