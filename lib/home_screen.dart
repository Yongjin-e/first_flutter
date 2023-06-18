import 'package:first_flutter/ch3/column_screen.dart';
import 'package:first_flutter/ch3/container_screen.dart';
import 'package:first_flutter/ch3/row_screen.dart';
import 'package:first_flutter/ch3/scaffold_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('홈'),
      ),
      body: Column(
        children: [
          button(page: ContainerScreen(), name: 'Container'),
          button(page: ColumnScreen(), name: 'Column'),
          button(page: RowScreen(), name: 'Row'),
          button(page: ScaffoldScrren(), name: 'Scaffolod'),
        ],
      ),
    );
  }

  Widget button({required Widget page, required String name}) {
    return Container(
      width: double.infinity,
      height: 60,
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return page;
              },
            ));
          },
          child: Text(
            name,
            style: TextStyle(fontSize: 24),
          )),
    );
  }
}
