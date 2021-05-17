import 'package:contemplation/controllers/bottom_bar_index_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(BottomBarIndexController());
    return GetBuilder<BottomBarIndexController>(
      builder: (controller) => BottomNavigationBar(
        currentIndex: controller.index,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "홈"),
          BottomNavigationBarItem(icon: Icon(MdiIcons.recordCircleOutline), label: "명상"),
          BottomNavigationBarItem(icon: Icon(MdiIcons.tailwind), label: "호흡"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "프로필"),
          BottomNavigationBarItem(icon: Icon(Icons.widgets_rounded), label: "전체"),
        ],
        onTap: (int index) => controller.setIndex(index)
      ),
    );
  }
}
