import 'package:flutter/material.dart';

class TabTest extends StatefulWidget {
  const TabTest({super.key});

  @override
  State<TabTest> createState() => _TabTestState();
}

class _TabTestState extends State<TabTest> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('tab')),
          bottom: TabBar(tabs: [
            Tab(
              text: '1',
            ),
            Tab(
              text: '2',
            ),
            Tab(
              text: '3',
            ),
          ]),
        ),
        body: Column(
          children: [
            Container(
              child: Expanded(
                child: TabBarView(children: [
                  Center(child: Text('page1')),
                  
                   Center(child: Text('page2')),
                    Center(child: Text('page3'),),
                  ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TestTwo extends StatefulWidget {
  const TestTwo({super.key});

  @override
  State<TestTwo> createState() => _TestTwoState();
}

// TabController _tabController = TabController(length: 3, vsync: this);
// DefaultTabController _tabController =
//     DefaultTabController(length: 3,);

class _TestTwoState extends State<TestTwo> {
  @override
  Widget build(BuildContext context) {
    return
        // Scaffold(
        //   body: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: TabBar(
        indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(50), // Creates border
            color: Colors.blue), //Change background color from here

        tabs: const [
          Tab(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
          ),
          Tab(
            icon: Icon(Icons.directions_car, color: Colors.black),
          ),
          Tab(
            icon: Icon(Icons.phone, color: Colors.black),
          ),
        ],
      ),
    );
    // Expanded(
    //   child: TabBarView(children: [
    //     Text('1'),
    //     Text('2'),
    //     Text('3'),
    //   ]),
    // )
    //  ],
    //);
    //);
  }
}
