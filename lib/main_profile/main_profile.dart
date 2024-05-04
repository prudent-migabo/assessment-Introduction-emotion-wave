import 'package:assigment_introduction_emotion_wave/widgets/like_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../contants.dart';

class MainProfile extends StatelessWidget {
  const MainProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.scaffoldColor,
      // appBar: AppBar(
      //   backgroundColor: Constants.scaffoldColor,
      //   leading: SvgPicture.asset(Constants.appBarLocationLeading, height: 5, width: 5,),
      //   title: Text('목이길어슬픈기린님의 새로운 스팟', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 14),),
      //   actions: [
      //     LikeContainer(isRedStar: true, text: '323,233', ),
      //     SvgPicture.asset(Constants.notifIcon, height: 10, width: 10,),
      //   ],
      // ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40.0, left: 20, right: 10),
            child: Row(
              children: [
                Expanded(
                  child: Row(
                  children: [
                    SvgPicture.asset(Constants.appBarLocationLeading, height: 20, width: 20,),
                    const SizedBox(width: 7,),
                    const Text('목이길어슬픈기린님의 새로운 스팟', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12),),
                  ],
                ),),
                // SizedBox(width: 25,),
                const LikeContainer(isRedStar: true, text: '323,233',),
                SvgPicture.asset(
                  Constants.notifIcon2, height: 30, width: 30,
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text('추천 드릴 친구들을 준비 중이에요', style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),),
                ),
                SizedBox(height: 10,),
                Center(
                  child: Text('매일 새로운 친구들을 소개시켜드려요', style: TextStyle(
                    color: Constants.textGrey,
                    fontSize: 15,
                  ),),
                ),
              ],
            ),
          ),
        ],
      ),

    );
  }
}
