import 'package:flutter/material.dart';

class ListviewScreen extends StatefulWidget {
  const ListviewScreen({super.key});

  @override
  State<ListviewScreen> createState() => _ListviewScreenState();
}

class _ListviewScreenState extends State<ListviewScreen> {

  List<int> dataList = [11,22,33,44,55,66,77,88,99,00];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text('ListviewScreen'),
      ),
      body: listViewSeparator(),
    );
  }

  Widget listView() {
    return ListView(
      // physics: ClampingScrollPhysics(),
      physics: BouncingScrollPhysics(),
      // physics: RangeMaintainingScrollPhysics(),
      children: [
        _box(Colors.blue),
        _box(Colors.yellow),
        _box(Colors.green),
      ],
    );
  }

  Widget listViewBuilder() {
    return ListView.builder(
      itemCount: 30,
      itemBuilder: (context, index) {
        return Text(
          index.toString(),
          style: TextStyle(fontSize: 39),
        );
      },
    );
  }

  Widget listViewSeparator() {
    return ListView.separated(
        itemBuilder: (context, index) {
          print('index : $index');
          return Column(
            children: [
              Text(
                dataList[index].toString(),
                style: TextStyle(fontSize: 30),
              ),
            ],
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(height: 15);
        },
        itemCount: dataList.length);
  }

  Widget _box(Color color) {
    return Container(
      height: 300,
      color: color,
    );
  }
}
