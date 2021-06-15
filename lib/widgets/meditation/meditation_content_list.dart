import 'package:contemplation/models/meditation_list_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MeditationContentList extends StatelessWidget {
  final List<MeditationTile> tiles;

  MeditationContentList(this.tiles);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
        itemBuilder: (_, i) => MeditationContentTile(tiles[i]),
        itemCount: tiles.length,
        separatorBuilder: (_, i) => Divider(
          height: 0,
          thickness: 1,
          color: Colors.grey.withOpacity(0.1),
        ),
      ),
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
        color: Colors.white,
        height: Get.height * 0.135,
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(40)),
                  image: DecorationImage(
                      image: NetworkImage(tile.imageUrl), fit: BoxFit.cover)),
              height: Get.height * 0.11,
              width: Get.height * 0.11,
            ),
            SizedBox(width: Get.width * 0.03),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("제목"),
                Text("보조설명"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
