import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ButtonScreen extends StatefulWidget {
  const ButtonScreen({super.key});

  @override
  State<ButtonScreen> createState() => ButtonScreenState();
}

class ButtonScreenState extends State<ButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonScreen'),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _elevatedButton(),
            _textButton(),
            _outlinedButton(),
          ],
        ),
      ),
    );
  }

  Widget _elevatedButton() {
    return ElevatedButton(
      // onPressed: null,
      onPressed: () {
        print('ElevatedButton onPressed');
      },
      onLongPress: () {
        print('ElevatedButton onLongPress');
      },
      style: buttonStyle(),
      child: Text('ElevatedButton'),
    );
  }

  Widget _textButton() {
    return TextButton(
      onPressed: () {},
      child: Text('TextButton'),
      style: buttonStyle(),
    );
  }

  Widget _outlinedButton() {
    return TextButton(
      onPressed: () {},
      child: Text('OutlinedButton'),
      style: buttonStyle(),
    );
  }

  ButtonStyle buttonStyle() {
    Size size = MediaQuery.of(context).size;

    return ElevatedButton.styleFrom(
      backgroundColor: Colors.deepPurpleAccent,
      foregroundColor: Colors.yellow,
      shadowColor: Colors.orange,
      elevation: 5,
      fixedSize: Size(size.width * 0.55, size.height * 0.08),
      alignment: Alignment.topLeft,
      padding: EdgeInsets.all(2),
      disabledBackgroundColor: Colors.green,
      disabledForegroundColor: Colors.white,
      disabledMouseCursor: SystemMouseCursors.grab,
      enabledMouseCursor: SystemMouseCursors.help,
      shape: _shape(),
    );
  }

  OutlinedBorder _shape() {
    BorderSide borderSide = BorderSide(
      color: Colors.red,
      width: 10,
    );

    BorderRadius borderRadius = BorderRadius.circular(16);

    return RoundedRectangleBorder(
      side: borderSide,
      borderRadius: borderRadius,
    );
  }
}
