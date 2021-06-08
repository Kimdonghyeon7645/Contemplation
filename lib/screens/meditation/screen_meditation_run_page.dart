import 'package:flutter/material.dart';

class MeditationRunPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("마음을 비우는 명상", style: TextStyle(color: Colors.black)),
        actions: [
          IconButton(icon: Icon(Icons.bookmark_border), onPressed: () {},),
        ],
      ),
      body: Column(
        children: [

        ],
      ),
    );
  }
}
