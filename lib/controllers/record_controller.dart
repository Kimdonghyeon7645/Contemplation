import 'package:get/get.dart';

enum MODE { DAY, WEEK, MONTH }

class RecordController extends GetxController {
  final int leftmostIndex = (2021 * 12) + 5;
  final int leftmostMotionYear = 202105;
  final int rightmostMotionYear = 203005;
  final int startIndex =
      (DateTime.now().year - 2021) * 12 + DateTime.now().month - 5;
  Map<int, List> calendarValueMap = {};
  MODE mode = MODE.DAY;
  int currentViewYear = DateTime.now().year;
  int currentViewMonth = DateTime.now().month;
  int currentYear = DateTime.now().year;
  int currentMonth = DateTime.now().month;
  int currentDay = DateTime.now().day;
  int monthIndex;

  @override
  void onInit() {
    monthIndex = (currentViewYear * 12) + currentViewMonth - leftmostIndex;
    update();
    super.onInit();
  }

  void changeMonth(int newIndex) {
    if (newIndex > monthIndex) {
      if (currentViewMonth > 11) {
        currentViewYear++;
        currentViewMonth = 1;
      } else {
        currentViewMonth++;
      }
    } else {
      if (currentViewMonth < 2) {
        currentViewYear--;
        currentViewMonth = 12;
      } else {
        currentViewMonth--;
      }
    }
    monthIndex = newIndex;
    update();
  }

  void setDay(int day) {
    currentMonth = currentViewMonth;
    currentYear = currentYear;
    currentDay = day;
    update();
  }
}
