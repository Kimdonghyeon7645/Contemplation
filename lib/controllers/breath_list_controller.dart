import 'package:contemplation/dummies/breath_dummy.dart';
import 'package:contemplation/models/breath.dart';
import 'package:get/get.dart';

class BreathListController extends GetxController {
  List<Breath> lastBreathList = [];

  @override
  void onInit() {
    lastBreathList.addAll([
      breathList.last,
      breathList[2],
    ]);
    super.onInit();
  }

  void addBreath(Breath breath) {
    lastBreathList.add(breath);
    update();
  }
}
