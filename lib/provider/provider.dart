import 'package:assigment_introduction_emotion_wave/home_page.dart';
import 'package:flutter/cupertino.dart';

import '../main_profile1/main_profile1.dart';
import '../main_profile2/main_profile2.dart';
import '../main_profile3/main_profile3.dart';

class AppProvider extends ChangeNotifier {
  int index = 0;

  PageController pageController = PageController(
    initialPage: 0,
    viewportFraction: 0.9,
  );

  void selectIndex(int selectedIndex) {
    if (selectedIndex == 0) {
      index = 0;
      notifyListeners();
    } else if (selectedIndex == 1) {
      index = 1;
      notifyListeners();
    } else if (selectedIndex == 2) {
      index = 2;
      notifyListeners();
    } else if (selectedIndex == 3) {
      index = 3;
      notifyListeners();
    } else if (selectedIndex == 4) {
      index = 4;
      notifyListeners();
    }
  }

  void goToNextPage(BuildContext context) {
    pageController.nextPage(
        duration: const Duration(milliseconds: 500), curve: Curves.linear);
  }

  void goToPreviousPage(BuildContext context) {
    pageController.previousPage(
        duration: const Duration(milliseconds: 500), curve: Curves.linear);
  }

  List<Widget> items = [
    const MainProfile1(
      index: 0,
    ),
    const MainProfile2(
      index: 1,
    ),
    const MainProfile3(
      index: 2,
    ),
    const MainProfile3(
      index: 3,
    ),
    const MainProfile3(
      index: 4,
    ),
  ];

  void dismissCard(int index) {
    items.removeAt(index);
    if (items.isEmpty) {
      items.add(HomePage());
    }
    notifyListeners();
  }
}
