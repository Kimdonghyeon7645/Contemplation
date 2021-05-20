import 'package:contemplation/widgets/bottom_bar.dart';
import 'package:contemplation/widgets/home/home_content_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(237, 229, 216, 1),
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
                      0, 0.002 * Get.width, 0.02 * Get.width, 0),
                  child: Icon(MdiIcons.recordCircleOutline),
                )
              ],
              elevation: 0,
            ),
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.fromLTRB(
                    0.11 * Get.width, 0, 0, 0.05 * Get.width),
                alignment: Alignment.bottomLeft,
                height: Get.height * 0.08,
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
                "https://t1.daumcdn.net/cfile/blog/233EBE4357ABDD7314",
                "https://t1.daumcdn.net/cfile/blog/233EBE4357ABDD7314",
                "https://t1.daumcdn.net/cfile/blog/233EBE4357ABDD7314",
                "https://t1.daumcdn.net/cfile/blog/233EBE4357ABDD7314",
                "https://t1.daumcdn.net/cfile/blog/233EBE4357ABDD7314",
                "https://t1.daumcdn.net/cfile/blog/233EBE4357ABDD7314",
                "https://t1.daumcdn.net/cfile/blog/233EBE4357ABDD7314",
                "https://t1.daumcdn.net/cfile/blog/233EBE4357ABDD7314",
              ],
            ),
            HomeContentBox(
              title: "자주한 명상 목록",
              subTitle: "익숙한 명상도 다시 처음처럼 해봅시다!",
              images: [
                "https://t1.daumcdn.net/cfile/blog/233EBE4357ABDD7314",
                "https://t1.daumcdn.net/cfile/blog/233EBE4357ABDD7314",
                "https://t1.daumcdn.net/cfile/blog/233EBE4357ABDD7314",
                "https://t1.daumcdn.net/cfile/blog/233EBE4357ABDD7314",
                "https://t1.daumcdn.net/cfile/blog/233EBE4357ABDD7314",
                "https://t1.daumcdn.net/cfile/blog/233EBE4357ABDD7314",
                "https://t1.daumcdn.net/cfile/blog/233EBE4357ABDD7314",
                "https://t1.daumcdn.net/cfile/blog/233EBE4357ABDD7314",
              ],
            ),
          ],
        ),
        bottomNavigationBar: BottomBar(),
      ),
    );
  }
}
