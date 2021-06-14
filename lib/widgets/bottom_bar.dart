import 'package:contemplation/controllers/bottom_bar_index_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomBarIndexController>(
      builder: (controller) => BottomNavigationBar(
        type: BottomNavigationBarType.fixed,  // item 들이 항상 고정된다
        currentIndex: controller.index,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "홈"),
          BottomNavigationBarItem(icon: Icon(MdiIcons.recordCircleOutline), label: "명상"),
          BottomNavigationBarItem(icon: Icon(MdiIcons.tailwind), label: "호흡"),
          BottomNavigationBarItem(icon: Icon(Icons.assessment), label: "기록"),
        ],
        onTap: (int index) => controller.setIndex(index)
      ),
    );
  }
}
