import 'package:flutter/material.dart';

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({super.key});

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageViewScreen'),
      ),
      body: PageView(
        onPageChanged: (value) {
          print(value);
        },
        scrollDirection: Axis.vertical,
        children: [
          Container(color: Colors.yellow),
          Container(color: Colors.green),
          Container(color: Colors.blue),
        ],
      ),
    );
  }
}
