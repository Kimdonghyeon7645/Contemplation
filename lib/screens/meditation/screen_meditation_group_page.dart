import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MeditationGroupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: Get.height * 0.5,
              child: Stack(
                children: [
                  Container(
                    width: Get.width,
                    height: Get.height * 0.3,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                    ),
                  ),
                  IconButton(icon: Icon(Icons.keyboard_backspace, size: Get.width * 0.07, color: Colors.white), onPressed: () => Get.back()),
                  Positioned(
                    top: Get.height * 0.265,
                    left: Get.width * 0.04,
                    child: Container(
                      height: Get.height * 0.065,
                      width: Get.width * 0.92,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey),
                        color: Colors.white,
                      ),
                      child: Text("dd"),
                      alignment: Alignment.center,
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
