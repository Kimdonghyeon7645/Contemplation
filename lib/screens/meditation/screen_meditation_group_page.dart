import 'package:contemplation/dummies/meditation_group_dummy.dart';
// import 'package:contemplation/models/meditation_group.dart';
import 'package:contemplation/widgets/meditation/meditation_group_tile.dart';
import 'package:contemplation/widgets/meditation/meditations_progress_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MeditationGroupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final MeditationGroupData meditationGroup = Get.arguments;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: Get.height * 0.39,
                child: Stack(
                  children: [
                    Container(
                      width: Get.width,
                      height: Get.height * 0.35,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(meditationGroup.imageUrl),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Container(
                      width: Get.width,
                      height: Get.height * 0.35,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.black.withOpacity(0),
                            Colors.black.withOpacity(0.6)
                          ],
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Spacer(),
                          Text(meditationGroup.title,
                              style: Get.theme.textTheme.headline3
                                  .copyWith(color: Colors.white)),
                          SizedBox(height: Get.height * 0.01),
                          SizedBox(
                            width: Get.width * 0.85,
                            child: Text(meditationGroup.description,
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.6),
                                    fontSize: Get.height * 0.016),
                                maxLines: 5,
                                overflow: TextOverflow.ellipsis),
                          ),
                          SizedBox(height: Get.height * 0.065),
                        ],
                      ),
                    ),
                    IconButton(
                        icon: Icon(Icons.keyboard_backspace,
                            size: Get.width * 0.07, color: Colors.white),
                        onPressed: () => Get.back()),
                    Positioned(
                      top: Get.height * 0.315,
                      left: Get.width * 0.04,
                      child: MeditationsProgressBox(10, 0),
                    ),
                  ],
                ),
              ),
              for (int i = 0; i < meditationGroup.meditations.length; i++) MeditationGroupTile(meditationGroup.meditations[i]),
            ],
          ),
        ),
      ),
    );
  }
}
