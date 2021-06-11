import 'package:contemplation/dummies/meditation_tile_dummy.dart';
import 'package:contemplation/widgets/bottom_bar.dart';
import 'package:contemplation/widgets/meditation/meditation_content_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MeditationListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("명상", style: Get.theme.appBarTheme.titleTextStyle),
          // actions: [Icon(Icons.search)],
          bottom: TabBar(
            tabs: [
              Tab(text: "전체보기"),
              Tab(text: "감정별 보기"),
              Tab(text: "시간별 보기"),
              Tab(text: "테마별 보기"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            MeditationContentList(meditationTiles),
            MeditationContentList(meditationTiles),
            MeditationContentList(meditationTiles),
            MeditationContentList(meditationTiles),
          ],
        ),
        bottomNavigationBar: BottomBar(),
      ),
    );
  }
}
