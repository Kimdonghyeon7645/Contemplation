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
              actions: [Padding(
                padding: EdgeInsets.fromLTRB(0, 0.002 * Get.width, 0.01 * Get.width, 0),
                child: Icon(MdiIcons.recordCircleOutline),
              )],
              elevation: 0,
            ),
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.fromLTRB(
                    0.12 * Get.width, 0, 0, 0.07 * Get.width),
                alignment: Alignment.bottomLeft,
                height: Get.height * 0.1,
                color: Color.fromRGBO(232, 196, 118, 1),
                child: Text("임중도원 사이후이!",
                    style: Get.theme.appBarTheme.textTheme.headline2),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                height: Get.height * 2,
                color: Colors.grey.withOpacity(0.1),
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomBar(),
      ),
    );
  }
}
