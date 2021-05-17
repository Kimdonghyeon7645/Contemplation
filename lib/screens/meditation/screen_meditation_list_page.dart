import 'package:contemplation/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';

class MeditationListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Column(
        children: [
          Text("명상")
        ],
      ),
      bottomNavigationBar: BottomBar(),
    ));
  }
}
