import 'dart:io';

import 'package:assigment_introduction_emotion_wave/contants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavBar extends StatelessWidget {
  final int pageIndex;
  final Function(int) onTap;

  const NavBar({
    super.key,
    required this.pageIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: BottomAppBar(
        elevation: 0.0,
        child: ClipRRect(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
          child: Container(
            height: 80,
            color: Constants.blackColor,
            child: Row(
              children: [
                item(
                  selectedIcon: Constants.selectedHome,
                  selected: pageIndex == 0,
                  onTap: () => onTap(0),
                  label: '홈',
                ),
                item(
                  selectedIcon: Constants.selectedHome,
                  selected: pageIndex == 1,
                  onTap: () => onTap(0),
                  label: '스팟',
                ),
                const SizedBox(width: 80),
                item(
                  selectedIcon: Constants.selectedHome,
                  selected: pageIndex == 2,
                  onTap: () => onTap(0),
                  label: '채팅',
                ),
                item(
                  selectedIcon: Constants.selectedHome,
                  selected: pageIndex == 3,
                  onTap: () => onTap(0),
                  label: '마이',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget item({ required String selectedIcon, bool? selected, Function()? onTap, required String label}) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Column(
          children: [
            SvgPicture.asset(
              selectedIcon,
              colorFilter: ColorFilter.mode(selected! ? Constants.primaryColor : Colors.grey, BlendMode.srcIn),
            ),
            Text(label,
              style: TextStyle(
                fontSize: 12,
                  color: selected ? Constants.primaryColor : Colors.grey),),
          ],
        ),
      ),
    );
  }
}