import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeContentBox extends StatelessWidget {
  final String title, subTitle;
  final List<String> captions, images;

  HomeContentBox({this.title, this.subTitle, this.captions, this.images});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(
                  Get.width * 0.05, Get.height * 0.03, 0, 0),
              child: Text(title, style: Get.theme.textTheme.headline5),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                  Get.width * 0.05, Get.height * 0.003, 0, Get.height * 0.01),
              child: Text(subTitle, style: Get.theme.textTheme.headline6),
            ),
            SizedBox(
              height: Get.height * 0.22,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: Get.width * 0.04),
                  for (int i = 0; i < images.length; i++)
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(Get.width * 0.008),
                          width: Get.width * 0.33,
                          height: Get.height * 0.18,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(6)),
                            image: DecorationImage(
                              image: images[i].startsWith("http")
                                  ? NetworkImage(images[i])
                                  : AssetImage(images[i]),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        if (captions != null && i < captions.length) Text(captions[i]),
                      ],
                    ),
                  SizedBox(width: Get.width * 0.04),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}