import 'package:contemplation/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';

class BreathListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("호흡", style: TextStyle(color: Colors.black)),
      ),
      body: Column(
        children: [],
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
