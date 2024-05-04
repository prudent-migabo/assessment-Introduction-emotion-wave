import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../contants.dart';
import 'like_container.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0, left: 20, right: 10),
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                SvgPicture.asset(
                  Constants.appBarLocationLeading,
                  height: 20,
                  width: 20,
                ),
                const SizedBox(
                  width: 7,
                ),
                const Text(
                  '목이길어슬픈기린님의 새로운 스팟',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ),
              ],
            ),
          ),
          // SizedBox(width: 25,),
          const LikeContainer(
            icon: Constants.redStar,
            text: '323,233',
          ),
          SvgPicture.asset(
            Constants.notifIcon2,
            height: 35,
            width: 35,
          ),
        ],
      ),
    );
  }
}
