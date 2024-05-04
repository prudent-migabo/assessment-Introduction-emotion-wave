import 'package:assigment_introduction_emotion_wave/main_profile1/main_profile1.dart';
import 'package:assigment_introduction_emotion_wave/main_profile2/main_profile2.dart';
import 'package:assigment_introduction_emotion_wave/main_profile3/main_profile3.dart';
import 'package:assigment_introduction_emotion_wave/provider/provider.dart';
import 'package:assigment_introduction_emotion_wave/widgets/custom_appbar.dart';
import 'package:assigment_introduction_emotion_wave/widgets/like_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../contants.dart';
import '../widgets/navigation_bar.dart';

class MainProfile extends StatefulWidget {
  const MainProfile({super.key});

  @override
  State<MainProfile> createState() => _MainProfileState();
}

class _MainProfileState extends State<MainProfile> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    final items = context.watch<AppProvider>().items;
    return Scaffold(
      backgroundColor: Constants.scaffoldColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppbar(),
          const SizedBox(
            height: 25,
          ),
          Expanded(
            child: Builder(builder: (context) {
              return PageView(
                pageSnapping: false,
                clipBehavior: Clip.none,
                controller: context.read<AppProvider>().pageController,
                children: [
                  ...List.generate(items.length, (index) {
                    return items[index];
                  })
                ],
                onPageChanged: (index) {
                  context.read<AppProvider>().selectIndex(index);
                },
              );
            }),
          ),
          const SizedBox(
            height: 35,
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        margin: const EdgeInsets.only(top: 45),
        height: 67,
        width: 67,
        child: Container(
          height: 67,
          width: 67,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(width: 2, color: Constants.greyColor),
            color: Constants.blackColor,
          ),
          child: Container(
            height: 66,
            width: 66,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(width: 2, color: Constants.blackColor),
              color: Constants.blackColor,
            ),
            child: Container(
              height: 64,
              width: 64,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 1, color: Constants.blackColor),
                color: Constants.greyColor,
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xff101010),
                    Color(0xff2F2F2F),
                  ],
                ),
              ),
              child: Center(
                child: Image.asset(
                  Constants.blackStar,
                  width: 40,
                  height: 40,
                ),
              ),
            ),
          ),
        ),
        // FloatingActionButton(
        //   backgroundColor: Colors.white,
        //   elevation: 0,
        //   onPressed: (){},
        //   shape: RoundedRectangleBorder(
        //     side: const BorderSide(width: 3, color: Constants.greyColor),
        //     borderRadius: BorderRadius.circular(100),
        //   ),
        //   child:
        //   const Icon(
        //     Icons.add,
        //     color: Constants.greyColor,
        //   ),
        // ),
      ),
      bottomNavigationBar: NavBar(
        pageIndex: 0,
        onTap: (index) {},
      ),
    );
  }
}
