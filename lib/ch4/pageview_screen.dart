import 'package:flutter/material.dart';

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({super.key});

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  final PageController pageController = PageController();

  double opacity = 1;

  @override
  void initState() {
    pageController.addListener(() {
      if (pageController.page! < 1) {
        setState(() {
          opacity = pageController.page!;
        });
      }

      print(pageController.page);
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageViewScreen'),
      ),
      body: Column(
        children: [
          Opacity(
            opacity: opacity,
            child: Container(
              color: Colors.black,
              height: 50,
            ),
          ),
          Expanded(
            child: PageView(
              controller: pageController,
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
          ),
        ],
      ),
    );
  }
}
