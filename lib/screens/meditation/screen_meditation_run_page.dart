import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MeditationRunPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("오늘의 추천 명상", style: TextStyle(color: Colors.black)),
        actions: [
          IconButton(icon: Icon(Icons.bookmark_border), onPressed: () {},),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: Get.height * 0.51,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: Get.height * 0.46,
                  width: Get.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      // image: AssetImage("images/명상02.jpg"),
                      image: AssetImage("images/daedun.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                    child: Container(
                      decoration: BoxDecoration(color: Colors.black.withOpacity(0.2)),
                    ),
                  ),
                ),
                Positioned(
                  top: Get.height * 0.07,
                  child: Container(
                    height: Get.height * 0.44,
                    width: Get.width * 0.8,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/명상02.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                  )
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
