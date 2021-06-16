import 'package:contemplation/models/meditation_group.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeRecommendBox extends StatelessWidget {
  final MeditationGroupTileData meditation;

  HomeRecommendBox(this.meditation);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed("/meditation", arguments: meditation),
      child: Container(
        margin: EdgeInsets.only(left: Get.width * 0.02),
        child: Container(
          width: Get.width * 0.41,
          padding: EdgeInsets.only(top: Get.height * 0.106),
          child: Column(
            children: [
              Text(meditation.title,
                  style: TextStyle(
                      color: Colors.white, fontSize: Get.height * 0.018)),
              Text("${meditation.second ~/ 60}분",
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.7),
                      fontSize: Get.height * 0.016)),
            ],
          ),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Colors.black.withOpacity(0),
                Colors.black.withOpacity(0.5),
              ])),
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: meditation.imageUrl.split("/").first == "images"
                    ? AssetImage(meditation.imageUrl)
                    : NetworkImage(meditation.imageUrl),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.all(Radius.circular(15))),
      ),
    );
  }
}
