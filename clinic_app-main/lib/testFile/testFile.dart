import 'package:clinic_app/core/images/images.dart';
import 'package:clinic_app/testFile/tabbartest.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class TabTest extends StatefulWidget {
  const TabTest({super.key});

  @override
  State<TabTest> createState() => _TabTestState();
}

class _TabTestState extends State<TabTest> {
  double rating = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Image.asset(
            AppImgaes.car,
            width: 30,
            height: 28,
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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
                  Center(child: Text('${rating}')),
                  Center(
                    child: RatingBar.builder(
                      minRating: 1,
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.orange,
                      ),
                      onRatingUpdate: (rating) => setState(() {
                        this.rating = rating;
                      }),
                    ),
                  ),
                  // RatingBar.builder()
                  // Center(child: Text('page3'),),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: TextField(),
                  )
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

// class TestTabbar extends StatelessWidget {
//   const TestTabbar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 3,
//       child: Scaffold(
//         appBar: AppBar(
//           bottom: TabBar(tabs: [
//             Text('1'),
//             Text('2'),
//             Text('3'),
//           ]),
//         ),
//         body: TabBarView(children: [
//           Icon(Icons.home),
//           Icon(Icons.home),
//           Icon(Icons.home),
//           ]),
//       ),
//     );
//   }
// }


class Tabbartest extends StatelessWidget {
  const Tabbartest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TestTabbar(),
    );
  }
}