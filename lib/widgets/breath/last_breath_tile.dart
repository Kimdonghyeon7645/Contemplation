import 'package:contemplation/controllers/breath_list_controller.dart';
import 'package:contemplation/models/breath.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LastBreathTile extends StatelessWidget {
  final Breath breath;

  LastBreathTile(this.breath);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed("/breath", arguments: breath);
        Get.find<BreathListController>().addBreath(breath);
      },
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/연꽃01.jpg"), fit: BoxFit.cover),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        width: Get.width * 0.45,
        margin: EdgeInsets.only(right: Get.width * 0.02),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            color: Colors.black.withOpacity(0.26),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: Get.height * 0.01),
              Text(
                breath.name,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: Get.height * 0.019,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(height: Get.height * 0.01),
              Text(
                "${breath.breathSeconds.first[0]}-${breath.breathSeconds.last[0]}초",
                style: TextStyle(
                    color: Colors.white.withOpacity(0.7),
                    fontSize: Get.height * 0.022,
                    fontWeight: FontWeight.w300),
              ),
              Text(
                "${breath.breathSeconds.map((e) => 2 * e[0] * e[1]).reduce((a, b) => a + b) ~/ 60}분",
                style: TextStyle(
                    color: Colors.white.withOpacity(0.7),
                    fontSize: Get.height * 0.022,
                    fontWeight: FontWeight.w300),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
