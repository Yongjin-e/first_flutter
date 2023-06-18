import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key});

  final String imageUrl =
      'https://www.google.com/imgres?imgurl=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2F0mySg%2FbtqCUccOGVk%2FnQ68nZiNKoIEGNJkooELF1%2Fimg.jpg&tbnid=d-UKe9ZRqGICrM&vet=12ahUKEwin_7WRrcz_AhUTm1YBHetpASAQMygAegUIARDAAQ..i&imgrefurl=https%3A%2F%2Ffirpeng.tistory.com%2F103&docid=NTp6MBoqYtQ29M&w=2363&h=2363&q=%EC%9D%B4%EB%AF%B8%EC%A7%80&ved=2ahUKEwin_7WRrcz_AhUTm1YBHetpASAQMygAegUIARDAAQ';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ImageScreen'),
      ),
      body: Column(
        children: [
          Image.asset('assets/test1.png'),
          Image.network(
            imageUrl,
            fit: BoxFit.fitWidth,
          ),
        ],
      ),
    );
  }
}
