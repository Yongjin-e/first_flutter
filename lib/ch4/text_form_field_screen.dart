import 'package:flutter/material.dart';

class TextFormFieldScreen extends StatefulWidget {
  const TextFormFieldScreen({super.key});

  @override
  State<TextFormFieldScreen> createState() => _TextFormFieldScreenState();
}

class _TextFormFieldScreenState extends State<TextFormFieldScreen> {
  @override
  String textValue = '';

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextFormFieldScreen'),
      ),
      body: Column(
        children: [
          formWidget(),
        ],
      ),
    );
  }

  Widget formWidget() {
    return TextFormField(
      onChanged: (value) {
        textValue = value;
        setState(() {});
      },
      style: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.bold,
      ),
      cursorColor: Colors.red,
      cursorWidth: 8,
      cursorRadius: Radius.circular(4),
      maxLines: 3,
      maxLength: 8,
      decoration: InputDecoration(
        hintText: '아이디를 입력하세요.',
        hintStyle: TextStyle(
          fontSize: 40,
          color: Colors.green,
        ),
        enabledBorder: customBorder(5, Colors.deepPurple),
        focusedBorder: customBorder(3, Colors.green),
        errorBorder: customBorder(2, Colors.red),
        focusedErrorBorder: customBorder(5, Colors.red),
        errorText: checkErrorText(),
      ),
    );
  }

  InputBorder customBorder(double width, Color color) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        width: width,
        color: color,
      ),
    );
  }

  String? checkErrorText() {
    if (textValue.isEmpty) {
      return null;
    }

    if (textValue.length < 6) {
      return '6글자 이상 입력해주세요.';
    }

    return null;
  }
}
