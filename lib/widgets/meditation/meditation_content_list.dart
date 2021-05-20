import 'package:contemplation/models/meditation_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MeditationContentList extends StatelessWidget {
  final List<MeditationTile> tiles;

  MeditationContentList(this.tiles);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        for (int i = 0; i < tiles.length; i++) MeditationContentTile(tiles[i]),
      ],
    );
  }
}

class MeditationContentTile extends StatelessWidget {
  final MeditationTile tile;

  MeditationContentTile(this.tile);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed("/meditation/group"),
      child: Container(
        height: Get.height * 0.13,
        margin: EdgeInsets.fromLTRB(Get.width * 0.05, Get.height * 0.01,
            Get.width * 0.05, Get.height * 0.006),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            image: DecorationImage(
              image: NetworkImage(tile.imageUrl),
              fit: BoxFit.cover,
            )),
        alignment: Alignment.bottomCenter,
        child: Container(
          width: Get.width,
          height: Get.height * 0.04,
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.fromLTRB(Get.width * 0.04, 0, Get.width * 0.04, 0),
          child: Row(
            children: [
              Text(tile.name, style: TextStyle(color: Colors.white)),
              Spacer(),
              Icon(Icons.filter_none, color: Colors.white, size: Get.width * 0.04),
              SizedBox(width: Get.width * 0.01),
              Text(tile.length.toString(), style: TextStyle(color: Colors.white)),
            ],
          ),
          decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.3),
              borderRadius: BorderRadius.vertical(top: Radius.zero, bottom: Radius.circular(15)),
          ),
        ),
      ),
    );
  }
}
