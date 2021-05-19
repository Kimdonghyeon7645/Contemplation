import 'package:contemplation/widgets/bottom_bar.dart';
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
            SizedBox(
              height: 0.07 * Get.height,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  for (int i = 0; i < 10; i++)
                    Container(
                      child: Text(i.toString()),
                      margin: EdgeInsets.fromLTRB(
                          0.035 * Get.width,
                          0.015 * Get.height,
                          0.035 * Get.width,
                          0.015 * Get.height),
                      width: Get.width * 0.24,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        color: Colors.grey,
                      ),
                    ),
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomBar(),
      ),
    );
  }
}
