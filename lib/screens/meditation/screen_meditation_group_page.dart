import 'package:contemplation/widgets/meditation/progress_text_box.dart';
import 'package:flutter/cupertino.dart';
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
                    height: Get.height * 0.35,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://post-phinf.pstatic.net/MjAxODEwMTZfMTUx/MDAxNTM5NjQ4NTA5MjIz.dsgKhGKfXuofVcz9c5w4nX5LkcEiw82AYq92hj7AM9Ag.VFAzx20y5hX8moXLXXvuQJXMSxyQwSr77aNDrhq3Cfsg.JPEG/twi001t1451843_l.jpg?type=w1200"),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Container(
                    width: Get.width,
                    height: Get.height * 0.35,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withOpacity(0),
                          Colors.black.withOpacity(0.6)
                        ],
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Spacer(),
                        Text("제목",
                            style: Get.theme.textTheme.headline3
                                .copyWith(color: Colors.white)),
                        SizedBox(height: Get.height * 0.01),
                        SizedBox(
                          width: Get.width * 0.5,
                          child: Text("설명은 이부분에 표시된다는 설명 내용이 길면 길은데로 괜춘...",
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.6),
                                  fontSize: Get.height * 0.016),
                              maxLines: 5,
                              overflow: TextOverflow.ellipsis),
                        ),
                        SizedBox(height: Get.height * 0.06),
                      ],
                    ),
                  ),
                  IconButton(
                      icon: Icon(Icons.keyboard_backspace,
                          size: Get.width * 0.07, color: Colors.white),
                      onPressed: () => Get.back()),
                  Positioned(
                    top: Get.height * 0.315,
                    left: Get.width * 0.04,
                    child: ProgressTextBox(10, 0),
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
