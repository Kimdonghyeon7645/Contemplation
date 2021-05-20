import 'package:contemplation/widgets/bottom_bar.dart';
import 'package:contemplation/widgets/button_tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MeditationListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("명상", style: TextStyle(color: Colors.black)),
          centerTitle: true,
          actions: [Icon(Icons.search)],
        ),
        body: Column(
          children: [
            ButtonTabBar(["전체보기", "감정별 보기", "시간별 보기", "테마별 보기"])
          ],
        ),
        bottomNavigationBar: BottomBar(),
      ),
    );
  }
}
