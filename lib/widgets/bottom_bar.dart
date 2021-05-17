import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "홈"),
        BottomNavigationBarItem(icon: Icon(MdiIcons.recordCircleOutline), label: "명상"),
        BottomNavigationBarItem(icon: Icon(MdiIcons.tailwind), label: "호흡"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "프로필"),
        BottomNavigationBarItem(icon: Icon(Icons.widgets_rounded), label: "전체"),
      ],
    );
  }
}
