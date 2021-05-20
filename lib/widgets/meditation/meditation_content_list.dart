import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MeditationContentList extends StatelessWidget {
  final List contents;

  MeditationContentList(this.contents);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        for(int i = 0; i < contents.length; i++) MeditationContentTile(),
      ],
    );
  }
}


class MeditationContentTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(Get.width * 0.1, Get.height * 0.05, Get.width * 0.1, Get.height * 0.05),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        color: Colors.blueGrey,
      ),
    );
  }
}
