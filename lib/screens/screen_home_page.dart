import 'package:contemplation/widgets/bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Color.fromRGBO(232, 196, 118, 1),
              floating: true,
              leading: Icon(Icons.menu),
              leadingWidth: Get.width * 0.12,
              actions: [
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      0, 0.002 * Get.width, 0.01 * Get.width, 0),
                  child: Icon(MdiIcons.recordCircleOutline),
                )
              ],
              elevation: 0,
            ),
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.fromLTRB(
                    0.12 * Get.width, 0, 0, 0.05 * Get.width),
                alignment: Alignment.bottomLeft,
                height: Get.height * 0.1,
                color: Color.fromRGBO(232, 196, 118, 1),
                child: Text("임중도원 사이후이!",
                    style: Get.theme.appBarTheme.textTheme.headline2),
              ),
            ),
            HomeContentBox(
              title: "지금 기분은 어떠신가요?",
              subTitle: "현재 상태에 필요한 명상들을 추천해드립니다",
              captions: ["나태", "혼란", "분노", "탐욕", "불안", "두려움", "슬픔", "힘듬"],
              images: [
                "http://images.veritas.kr/data/images/full/22535/painful.jpg",
                "http://images.veritas.kr/data/images/full/22535/painful.jpg",
                "http://images.veritas.kr/data/images/full/22535/painful.jpg",
                "http://images.veritas.kr/data/images/full/22535/painful.jpg",
                "http://images.veritas.kr/data/images/full/22535/painful.jpg",
                "http://images.veritas.kr/data/images/full/22535/painful.jpg",
                "http://images.veritas.kr/data/images/full/22535/painful.jpg",
                "http://images.veritas.kr/data/images/full/22535/painful.jpg",
              ],
            )
          ],
        ),
        bottomNavigationBar: BottomBar(),
      ),
    );
  }
}

class HomeContentBox extends StatelessWidget {
  final String title, subTitle;
  final List<String> captions, images;

  HomeContentBox({this.title, this.subTitle, this.captions, this.images});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        color: Get.theme.canvasColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(Get.width * 0.05, Get.height * 0.03, 0, 0),
              child: Text(title, style: Get.theme.textTheme.headline5),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(Get.width * 0.05, Get.height * 0.003, 0, 0),
              child: Text(subTitle, style: Get.theme.textTheme.headline6),
            ),
            // Container(
            //   height: Get.height * 0.26,
            //   color: Colors.grey.withOpacity(0.1),
            // ),
          ],
        ),
      ),
    );
  }
}
