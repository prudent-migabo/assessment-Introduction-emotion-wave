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
        clipBehavior: Clip.none,
        padding: const EdgeInsets.all(0.0),
        elevation: 0,
        height: 80,
        color: Constants.blackColor,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: Container(
            padding: const EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
              border: Border.all(width: 2, color: Constants.greyColor),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              color: Constants.blackColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                item(
                  selectedIcon: Constants.selectedHome,
                  selected: true,
                  label: '홈',
                ),
                item(
                  selectedIcon: Constants.selectedLocation,
                  selected: false,
                  label: '스팟',
                ),
                const SizedBox(width: 80),
                item(
                  selectedIcon: Constants.selectedChat,
                  selected: false,
                  label: '채팅',
                ),
                item(
                  selectedIcon: Constants.selectedProfile,
                  selected: false,
                  label: '마이',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget item(
      {required String selectedIcon, bool? selected, required String label}) {
    return Expanded(
      child: Column(
        children: [
          // Image.asset(selectedIcon),
          SvgPicture.asset(
            selectedIcon,
            colorFilter: ColorFilter.mode(
                selected! ? Constants.primaryColor : Constants.greyBottomNav,
                BlendMode.srcIn),
          ),
          Text(
            label,
            style: TextStyle(
                fontSize: 13,
                color: selected
                    ? Constants.primaryColor
                    : Constants.greyBottomNav),
          ),
        ],
      ),
    );
  }
}
