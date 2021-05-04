import 'package:contemplation/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.dehaze,),
        ),
        body: CustomScrollView(slivers: [
          SliverToBoxAdapter(
            child: Container(
              height: Get.height * 0.3,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://user-images.githubusercontent.com/48408417/117020428-64bc5900-ad31-11eb-9a71-eb4b8b7e9e97.png"),
                    colorFilter: ColorFilter.mode(
                        Get.theme.canvasColor, BlendMode.colorBurn)),
              ),
              padding: EdgeInsets.fromLTRB(
                  Get.width * 0.06, Get.height * 0.02, 0, Get.height * 0.08),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("오늘도 반갑습니다,",
                      style: Get.theme.textTheme.headline2
                          .copyWith(color: Colors.white)),
                  Text("익명님!",
                      style: Get.theme.accentTextTheme.headline2
                          .copyWith(color: Colors.white)),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
              ),
              height: Get.height * 2,
              padding: EdgeInsets.fromLTRB(Get.width * 0.06, Get.height * 0.02, Get.width * 0.06, Get.height * 0.03),
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
}
