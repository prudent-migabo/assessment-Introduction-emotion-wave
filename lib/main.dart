import 'package:assigment_introduction_emotion_wave/bottom_navigation_screen/bottom_navigation_screen.dart';
import 'package:assigment_introduction_emotion_wave/main_profile/main_profile.dart';
import 'package:flutter/material.dart';

import 'contants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Constants.primaryColor,
      ),
      home:  MainProfile(),
    );
  }
}
