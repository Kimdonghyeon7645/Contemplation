import 'package:contemplation/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MeditationListPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("명상", style: TextStyle(color: Colors.black)),
            centerTitle: true,
            actions: [Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0.02 * Get.width, 0),
              child: Icon(Icons.search),
            )],
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
              Column(children: [],),
              Column(children: [],),
              Column(children: [],),
              Column(children: [],),
            ],
          ),
          bottomNavigationBar: BottomBar(),
        ),
      ),
    );
  }
}
