import 'package:flutter/material.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({super.key});

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> with SingleTickerProviderStateMixin{

  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 8, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TabBarScreen'),
      ),
      body: _tabBar(),
    );
  }
  
  Widget _tabBar(){
    return TabBar(
      controller: tabController,
      labelColor: Colors.green,
      unselectedLabelColor: Colors.black,
      labelStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      unselectedLabelStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
      overlayColor: MaterialStateProperty.all(Colors.blue.shade100),
      splashBorderRadius: BorderRadius.circular(20),
      indicatorWeight: 5,
      indicatorColor: Colors.black,
      indicatorSize: TabBarIndicatorSize.label,
      padding: EdgeInsets.symmetric(horizontal: 20),
      labelPadding: EdgeInsets.symmetric(horizontal: 20),
      // indicator: BoxDecoration(
      //   color: Colors.blue,
      // ),
      isScrollable: true,
      tabs: [
      Tab(text: '바지',),
      Tab(text: '상의',),
      Tab(text: '아우터',),
      Tab(text: '가방',),
      Tab(text: '모자',),
      Tab(text: '시계',),
      Tab(text: '원피스',),
      Tab(text: '시계',),
    ],);
  }
  
}
