import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../contants.dart';

class MainProfile3 extends StatefulWidget {
  const MainProfile3({super.key});

  @override
  State<MainProfile3> createState() => _MainProfile3State();
}

class _MainProfile3State extends State<MainProfile3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SvgPicture.asset('assets/images/nav_circular_center.svg'),
      bottomNavigationBar: Container(
        height: 60,
        color: Constants.blackColor,
        child: BottomNavigationBar(
// backgroundColor: Constants.bottomNavColor,
          selectedItemColor: Constants.primaryColor,
          onTap: (selectedIndex) {
            setState(() {
              // _index = selectedIndex;
            });
          },
          // currentIndex: _index,
          iconSize: 15,
          selectedLabelStyle: const TextStyle(
            fontSize: 10,
          ),
          unselectedLabelStyle: const TextStyle(
            fontSize: 10,
          ),
          selectedFontSize: 5,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          items:  [
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/images/home.svg'),
              label: '홈',
            ),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/images/location.svg'),
                label: '스팟'
            ),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/images/chat.svg'),
                label: '채팅'
            ),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/images/profile.svg'),
                label: '마이'
            ),
          ],
        ),
      ),
    );
  }
}