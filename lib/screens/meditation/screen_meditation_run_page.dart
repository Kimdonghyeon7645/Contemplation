import 'package:contemplation/controllers/meditation_run_controller.dart';
import 'package:contemplation/models/meditation_group.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MeditationRunPage extends StatelessWidget {
  final Color btnColor = Colors.black;
  @override
  Widget build(BuildContext context) {
    Get.put(MeditationRunController());
    MeditationGroupTileData meditation = Get.arguments;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(meditation.groupName, style: TextStyle(color: Colors.black)),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: meditation.imageUrl.split("/").first != "images" ? NetworkImage(meditation.imageUrl) : AssetImage(meditation.imageUrl),
                  fit: BoxFit.cover),
            ),
            child: Container(
              height: Get.height * 0.73,
              width: Get.width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withOpacity(0.2),
                  Colors.black.withOpacity(0),
                  Colors.black.withOpacity(0.4),
                ],
              )),
              child: Column(
                children: [
                  SizedBox(height: Get.height * 0.05),
                  Text(meditation.title ?? "제목없는 명상",
                      style: TextStyle(
                          color: Colors.white, fontSize: Get.height * 0.036)),
                  SizedBox(height: Get.height * 0.006),
                  Text(meditation.groupName ?? "그룹없음",
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.6),
                          fontSize: Get.height * 0.02)),
                  Spacer(),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: Get.height * 0.21,
              width: Get.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(30))),
              padding: EdgeInsets.fromLTRB(
                  Get.width * 0.05, Get.height * 0.033, Get.width * 0.05, 0),
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: Get.width * 0.01, right: Get.width * 0.01),
                        child: LinearProgressIndicator(
                          value: 0,
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Colors.indigo),
                          backgroundColor: Colors.grey.withOpacity(0.2),
                          minHeight: Get.height * 0.006,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            left: Get.width * (0.89 - (0.89 * 1))),
                        height: Get.height * 0.018,
                        width: Get.height * 0.018,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.indigo,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: Get.width * 0.01),
                      Text("00:00",
                          style: TextStyle(
                              fontSize: Get.height * 0.015,
                              color: Colors.grey)),
                      Spacer(),
                      Text("09:58",
                          style: TextStyle(
                              fontSize: Get.height * 0.015,
                              color: Colors.grey)),
                      SizedBox(width: Get.width * 0.01),
                    ],
                  ),
                  SizedBox(height: Get.height * 0.026),
                  Padding(
                    padding: EdgeInsets.only(
                        left: Get.width * 0.01, right: Get.width * 0.01),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.library_books,
                            size: Get.height * 0.03,
                            color: btnColor.withOpacity(0.8)),
                        Icon(Icons.fast_rewind,
                            size: Get.height * 0.035,
                            color: btnColor.withOpacity(0.8)),
                        Icon(Icons.play_arrow,
                            size: Get.height * 0.07, color: btnColor),
                        Icon(Icons.fast_forward,
                            size: Get.height * 0.035,
                            color: btnColor.withOpacity(0.8)),
                        Icon(Icons.favorite_border,
                            size: Get.height * 0.03,
                            color: btnColor.withOpacity(0.8)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
