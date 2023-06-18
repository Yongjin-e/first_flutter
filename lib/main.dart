import 'package:first_flutter/ch3/container_screen.dart';
import 'package:flutter/material.dart';
import 'ch3/column_screen.dart';
import 'ch3/row_screen.dart';
import 'home_screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
