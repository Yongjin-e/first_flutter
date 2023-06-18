import 'package:flutter/material.dart';

class ScaffoldScrren extends StatelessWidget {
  const ScaffoldScrren({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(),
      backgroundColor: Colors.orange,
      floatingActionButton: FloatingActionButton(onPressed: () {}),
    );
  }

  AppBar appBarWidget() {
    return AppBar(
      title: const Text('ScaffoldScrren'),
      automaticallyImplyLeading: true,
      // centerTitle: true,
      titleSpacing: 30,
      // leadingWidth: 100,
      // leading: Icon(Icons.back_hand),
      actions: const [
        Icon(
          Icons.camera_alt,
          size: 30,
        ),
        SizedBox(width: 20),
        Icon(
          Icons.search,
          size: 30,
        ),
        SizedBox(width: 10),
      ],
      backgroundColor: Colors.red,
      elevation: 0,
    );
  }
}
