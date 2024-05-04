import 'package:assigment_introduction_emotion_wave/main_profile/main_profile.dart';
import 'package:assigment_introduction_emotion_wave/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'contants.dart';
import 'main_profile1/main_profile1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return AppProvider();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Constants.primaryColor,
        ),
        home: const MainProfile(),
      ),
    );
  }
}
