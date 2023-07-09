import 'package:flutter/material.dart';

class DefaultTabControllerScreen extends StatefulWidget {
  const DefaultTabControllerScreen({super.key});

  @override
  State<DefaultTabControllerScreen> createState() =>
      _DefaultTabControllerScreenState();
}

class _DefaultTabControllerScreenState extends State<DefaultTabControllerScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(
      length: 3,
      vsync: this,
      initialIndex: 1,
      animationDuration: Duration(milliseconds: 500),
    );

    tabController.addListener(() {
      print(tabController.index);
    });

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
        title: Text('DefaultTabControllerScreen'),
      ),
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            _TabBar(),
            SizedBox(
              height: 300,
              child: _tabBarView(),
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    tabController.index = 0;
                  },
                  child: Text('이동'),
                ),
                ElevatedButton(
                  onPressed: () {
                    tabController.animateTo(
                      2,
                      duration: Duration(milliseconds: 2000),
                      curve: Curves.elasticOut,
                    );
                  },
                  child: Text('이동 애니메이션'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  TabBar _TabBar() {
    return TabBar(
      controller: tabController,
      labelColor: Colors.black,
      indicatorWeight: 5,
      indicatorColor: Colors.black,
      tabs: [
        Tab(
          text: 'TAB1',
        ),
        Tab(
          text: 'TAB2',
        ),
        Tab(
          text: 'TAB3',
        ),
      ],
    );
  }

  TabBarView _tabBarView() {
    return TabBarView(
      controller: tabController,
      viewportFraction: 0.9,
      children: [
        Container(
            color: Colors.blue, margin: EdgeInsets.symmetric(horizontal: 10)),
        Container(
            color: Colors.green, margin: EdgeInsets.symmetric(horizontal: 10)),
        Container(
            color: Colors.yellowAccent,
            margin: EdgeInsets.symmetric(horizontal: 10)),
      ],
    );
  }
}
