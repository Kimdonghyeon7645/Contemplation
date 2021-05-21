import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MeditationGroupTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.08,
      child: Row(
        children: [
          IconButton(
              icon: Icon(Icons.play_circle_outline, color: Colors.grey),
              onPressed: () => print("플레이보이")),
          Text("니 하는 플레이보이", style: TextStyle(fontSize: Get.height * 0.018)),
          Spacer(),
          SizedBox(width: Get.width * 0.04),
          Text("44:44", style: TextStyle(fontSize: Get.height * 0.014, color: Colors.black.withOpacity(0.5))),
          SizedBox(width: Get.width * 0.05),
        ],
      ),
    );
  }
}
