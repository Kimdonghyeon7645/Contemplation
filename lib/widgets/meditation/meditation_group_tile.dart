import 'package:contemplation/models/meditation_group.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MeditationGroupTile extends StatelessWidget {
  final MeditationGroupTileData meditation;

  MeditationGroupTile(this.meditation);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed("/meditation", arguments: meditation),
      child: Container(
        height: Get.height * 0.08,
        child: Row(
          children: [
            SizedBox(width: Get.width * 0.04),
            Icon(Icons.play_circle_outline, color: Colors.grey),
            SizedBox(width: Get.width * 0.03),
            Text(meditation.title,
                style: TextStyle(fontSize: Get.height * 0.018)),
            Spacer(),
            SizedBox(width: Get.width * 0.04),
            Text(
                (meditation.second / 60).floor().toString().padLeft(2, "0") +
                    ":" +
                    (meditation.second % 60).toString().padLeft(2, "0"),
                style: TextStyle(
                    fontSize: Get.height * 0.014,
                    color: Colors.black.withOpacity(0.5))),
            SizedBox(width: Get.width * 0.05),
          ],
        ),
      ),
    );
  }
}
