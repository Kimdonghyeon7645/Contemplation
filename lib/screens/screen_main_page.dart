import 'package:contemplation/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(leading: Icon(Icons.dehaze)),
        body: CustomScrollView(slivers: [
          SliverAppBar(
            expandedHeight: Get.height * 0.22,
            flexibleSpace: FlexibleSpaceBar(
              stretchModes: [StretchMode.zoomBackground],
              centerTitle: true,
              background: buildFlexibleSpaceBackground(),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
              ),
              height: Get.height * 2,
              padding: EdgeInsets.fromLTRB(Get.width * 0.06, Get.height * 0.02,
                  Get.width * 0.06, Get.height * 0.03),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("추천 명상"),
                      Icon(Icons.more_horiz),
                    ],
                  )
                ],
              ),
            ),
          ),
        ]),
        bottomNavigationBar: BottomBar(),
      ),
    );
  }

  Container buildFlexibleSpaceBackground() {
    return Container(
      padding: EdgeInsets.fromLTRB(
          Get.width * 0.06, Get.height * 0.02, 0, 0),
      child: Stack(
        children: [
          // Align(
          //   alignment: Alignment.bottomRight,
          //   child: Image.network("https://user-images.githubusercontent.com/48408417/117029561-bff24980-ad39-11eb-84c1-ac8d310e6c84.png", width: Get.height * 0.16,),
          // ),
          Text("오늘도 반갑습니다,",
              style:
                  Get.theme.textTheme.headline2.copyWith(color: Colors.white)),
          Positioned(
            top: Get.theme.textTheme.headline2.fontSize + 0.01 * Get.height,
            child: Text("익명님!",
                style: Get.theme.accentTextTheme.headline2
                    .copyWith(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
