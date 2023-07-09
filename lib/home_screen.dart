import 'package:first_flutter/ch3/column_screen.dart';
import 'package:first_flutter/ch3/container_screen.dart';
import 'package:first_flutter/ch3/image_screen.dart';
import 'package:first_flutter/ch3/row_screen.dart';
import 'package:first_flutter/ch3/scaffold_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ch3/text_screen.dart';
import 'ch4/button_screen.dart';
import 'ch4/gridview_screen.dart';
import 'ch4/listview_screen.dart';
import 'ch4/pageview_screen.dart';
import 'ch4/single_scroll_screen.dart';
import 'ch4/text_form_field_screen.dart';

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            button(page: ContainerScreen(), name: 'Container'),
            button(page: ColumnScreen(), name: 'Column'),
            button(page: RowScreen(), name: 'Row'),
            button(page: ScaffoldScrren(), name: 'Scaffold'),
            button(page: TextScreen(), name: 'Text'),
            button(page: ImageScreen(), name: 'Image'),
            button(page: ButtonScreen(), name: 'Button'),
            button(page: TextFormFieldScreen(), name: 'TextFormField'),
            button(page: SingleScrollScreen(), name: 'SingleScroll'),
            button(page: ListviewScreen(), name: 'Listview'),
            button(page: GridViewScreen(), name: 'GridView'),
            button(page: PageViewScreen(), name: 'PageView'),
          ],
        ),
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
