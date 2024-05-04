import 'package:assigment_introduction_emotion_wave/widgets/custom_appbar.dart';
import 'package:assigment_introduction_emotion_wave/widgets/like_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../contants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              '추천 드릴 친구들을 준비 중이에요',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              '매일 새로운 친구들을 소개시켜드려요',
              style: TextStyle(
                color: Constants.textGrey,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
