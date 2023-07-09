import 'package:flutter/material.dart';

class SingleScrollScreen extends StatefulWidget {
  const SingleScrollScreen({super.key});

  @override
  State<SingleScrollScreen> createState() => _SingleScrollScreenState();
}

class _SingleScrollScreenState extends State<SingleScrollScreen> {

  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      // print(DateTime.now());
      var offset = scrollController.offset;
      // print('offset : $offset');
      var userScrollDirection = scrollController.position.userScrollDirection;
      print('userScrollDirection : $userScrollDirection');
    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text('SingleScrollScreen'),
      ),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        controller: scrollController,
        // reverse: true,
        //scrollDirection: Axis.horizontal,
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Column(
          children: [
            TextFormField(),
            _box(Colors.orange),
            _box(Colors.red),
            _box(Colors.black),
            _box(Colors.green),
            _box(Colors.purple),
            _box(Colors.blue),
            _box(Colors.black12),
            _box(Colors.greenAccent),
          ],
        ),
      ),
    );
  }

  Widget _box(Color color){
    return Container(
      height: 150,
      // width: 150,
      color: color,
    );
  }

}
