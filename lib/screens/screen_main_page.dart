import 'package:contemplation/themes/light_theme.dart';
import 'package:contemplation/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.dehaze), onPressed: () {}),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("오늘도 반갑습니다,", style: Get.theme.textTheme.headline2.copyWith(color: Colors.white)),
            Text("익명님!", style: Get.theme.accentTextTheme.headline2.copyWith(color: Colors.white)),
          ],
        ),
        bottomNavigationBar: BottomBar(),
      ),
    );
  }
}
