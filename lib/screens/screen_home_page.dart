import 'package:contemplation/widgets/bottom_bar.dart';
import 'package:contemplation/widgets/medication_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  final List<List<String>> medicationList = [
    ["하루 5분 명상", "기본 명상"],
    ["10분 몰입 명상", "기본 명상"],
    ["지혜를 깨우는 명상", "기본 명상"],
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(leading: Icon(Icons.dehaze)),
        body: CustomScrollView(
          slivers: [
            HomeSliverAppBar(),
            SliverToBoxAdapter(
              child: buildMedicationList(medicationList),
            ),
          ],
        ),
        bottomNavigationBar: BottomBar(),
      ),
    );
  }

  Container buildMedicationList(List<List<String>> list) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(35)),
      ),
      height: Get.height * 1,
      padding: EdgeInsets.fromLTRB(Get.width * 0.07, Get.height * 0.02,
          Get.width * 0.07, Get.height * 0.03),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("추천 명상", style: Get.textTheme.headline6),
              Icon(
                Icons.more_horiz,
                color: Get.textTheme.headline6.color,
              ),
            ],
          ),
          SizedBox(height: Get.height * 0.01),
          for (List<String> content in list)
            Padding(
              padding: EdgeInsets.fromLTRB(
                  0, Get.height * 0.01, 0, Get.height * 0.01),
              child: MedicationTile(content[0], content[1]),
            )
        ],
      ),
    );
  }
}

class HomeSliverAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      elevation: 0,
      expandedHeight: Get.height * 0.1,
      stretch: true,
      flexibleSpace: FlexibleSpaceBar(
        title: Text("은근히 꾸준히!", style: Get.theme.textTheme.headline1.copyWith(color: Colors.black)),
        stretchModes: [
          StretchMode.blurBackground
        ],
      ),
      // floating: true,
    );
  }
}

