import 'package:flutter/material.dart';

class UiExam extends StatefulWidget {
  const UiExam({super.key});

  @override
  State<UiExam> createState() => _UiExamState();
}

class _UiExamState extends State<UiExam> {
  int _currentIndex = 0;
  final PageController pageController = PageController();

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  var _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _appBar(),
      body: IndexedStack(
        index: _currentIndex,
        children: [
          _body(),
          Container(color: Colors.green),
          Container(color: Colors.blue),
        ],
          //
      ),
      bottomNavigationBar: _bottomNav(),
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: Text('복잡한 UI'),
      centerTitle: true,
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      elevation: 0,
      actions: [
        IconButton(onPressed: () {

        }, icon: Icon(Icons.add)),
      ],
    );
  }

  Widget _body() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _top(),
          const SizedBox(
            height: 20,
          ),
          _middle(),
          const SizedBox(
            height: 20,
          ),
          ..._bottom(),
        ],
      ),
    );
  }

  List<String> labels = ['택시', '버스', '바이크', '대리', '승용차', '승합차', '중형'];

  Widget _top() {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 4,
      childAspectRatio: 1.2,
      children: [
        ...List.generate(labels.length, (index) {
          return iconItem(
            text: labels[index],
            onPressed: () {
              print('${labels[index]} 클릭');
            },
          );
        }),
      ],
    );
  }

  Widget iconItem({
    required String text,
    required Function() onPressed,
  }) {
    return TextButton(
      onPressed: () {
        onPressed();
      },
      style: TextButton.styleFrom(
        foregroundColor: Colors.black,
        padding: EdgeInsets.zero,
        shape: const CircleBorder(),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.local_taxi, size: 40),
          Text(text),
        ],
      ),
    );
  }

  List<String> imageList = [
    'assets/test1.png',
    'assets/test2.png',
    'assets/test1.png',
  ];

  Widget _middle() {
    return SizedBox(
      height: 200,
      child: PageView.builder(
        controller: pageController,
        itemCount: imageList.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.asset(imageList[index]).image,
                )),
          );
        },
      ),
    );
  }

  List<Widget> _bottom() {
    return List.generate(10, (index) {
      return ListTile(
        onTap: (){

        },
        leading: Icon(Icons.notifications_none_rounded),
        title: Padding(
          padding: const EdgeInsets.only(bottom: 4),
          child: Text('[이벤트]공지사항 입니다.'),
        ),
        minLeadingWidth: 0,
        contentPadding: EdgeInsets.symmetric(horizontal: 12),
      );
    });
  }

  Widget _bottomNav() {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: (value) {
        setState(() {
          _currentIndex = value;
        });
      },
      showSelectedLabels: true,
      showUnselectedLabels: true,
      backgroundColor: Colors.orange.shade50,
      iconSize: 30,
      selectedItemColor: Colors.pink,
      unselectedItemColor: Colors.grey.shade500,
      // type: BottomNavigationBarType.shifting,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          activeIcon: Icon(Icons.home),
          label: '홈',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.alarm_off),
          activeIcon: Icon(Icons.access_alarm),
          label: '알림',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          activeIcon: Icon(Icons.person),
          label: '친구',
        ),
      ],
    );
  }
}
