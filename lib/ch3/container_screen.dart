import 'package:flutter/material.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          height: 600,
          alignment: Alignment.bottomCenter,
          padding: EdgeInsets.all(10),
          // margin: EdgeInsets.all(30),
          decoration: BoxDecoration(
            color: Colors.deepPurpleAccent,
            borderRadius: BorderRadius.circular(30),
            border: Border.all(
              color: Colors.black,
              width: 7,
            ),
            gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                transform: GradientRotation(1),
                colors: [
                  Colors.red,
                  Colors.orange,
                  Colors.yellow,
                  Colors.green,
                  Colors.blue,
                  Colors.indigo,
                  Colors.purple,
                ]),
          ),
          foregroundDecoration: BoxDecoration(
            color: Colors.blue.shade300,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 100,
                spreadRadius: 30,
                offset: Offset(0, 30),
                blurStyle: BlurStyle.inner
              ),
            ],
          ),
          child: const Text(
            '컨테이너',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
