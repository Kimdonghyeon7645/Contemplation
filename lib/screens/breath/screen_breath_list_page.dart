import 'package:contemplation/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';

class BreathListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      bottomNavigationBar: BottomBar(),
    ));
  }
}
