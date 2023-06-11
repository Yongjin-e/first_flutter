import 'package:flutter/material.dart';

class ColumnScreen extends StatelessWidget {
  const ColumnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 6,
              child: _container(100, 100, Colors.red),
            ),
            Expanded(
              flex: 2,
              child: _container(100, 100, Colors.orange),
            ),
            Expanded(
              flex: 2,
              child: _container(100, 100, Colors.green),
            ),
          ],
        ),
      ),
    );
  }

  Widget _container(
    double width,
    double height,
    Color color,
  ) {
    return Container(
      width: width,
      height: height,
      color: color,
    );
  }
}
