
import 'package:assigment_introduction_emotion_wave/contants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/bottom_navigation_model.dart';
import '../widgets/navigation_bar.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  final homeKey = GlobalKey<NavigatorState>();
  final locationKey = GlobalKey<NavigatorState>();
  final chatKey = GlobalKey<NavigatorState>();
  final profileKey = GlobalKey<NavigatorState>();
  int selectedTab = 0;
  List<NavModel> items = [];

  @override
  void initState() {
    super.initState();
    items = [
      NavModel(
        page: const TabPage(tab: 1),
        navKey: homeKey,
      ),
      NavModel(
        page: const TabPage(tab: 2),
        navKey: locationKey,
      ),
      NavModel(
        page: const TabPage(tab: 3),
        navKey: chatKey,
      ),
      NavModel(
        page: const TabPage(tab: 4),
        navKey: profileKey,
      ),
    ];
  }

  final List<Widget> _pages = [
    Scaffold(
      body: Center(child: Text('Page 1'),),
    ),
    Scaffold(
      body: Center(child: Text('Page 2'),),
    ),
    Scaffold(
      body: Center(child: Text('Page 3'),),
    ),
    Scaffold(
      body: Center(child: Text('Page 4'),),
    ),

  ];

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedTab,
        children: items
            .map((page) => Navigator(
          key: page.navKey,
          onGenerateInitialRoutes: (navigator, initialRoute) {
            return [
              MaterialPageRoute(builder: (context) => page.page)
            ];
          },
        ))
            .toList(),

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        margin: const EdgeInsets.only(top: 50),
        height: 64,
        width: 64,
        child:
        FloatingActionButton(
          backgroundColor: Colors.white,
          elevation: 0,
          onPressed: (){},
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 3, color: Colors.green),
            borderRadius: BorderRadius.circular(100),
          ),
          child: const Icon(
            Icons.add,
            color: Colors.green,
          ),
        ),
      ),
      bottomNavigationBar: NavBar(
        pageIndex: selectedTab,
        onTap: (index) {
          setState(() {
            selectedTab = index;
          });
          // if (index == selectedTab) {
          //   items[index]
          //       .navKey
          //       .currentState
          //       ?.popUntil((route) => route.isFirst);
          // } else {
          //   setState(() {
          //     selectedTab = index;
          //   });
          // }
        },
      ),
    );
  }
}

class TabPage extends StatelessWidget {
  final int tab;

  const TabPage({Key? key, required this.tab}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tab $tab')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Tab $tab'),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Go to page'),
            )
          ],
        ),
      ),
    );
  }
}

class NavModel {
  final Widget page;
  final GlobalKey<NavigatorState> navKey;

  NavModel({required this.page, required this.navKey});
}
