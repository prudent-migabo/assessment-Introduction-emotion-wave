import 'package:assigment_introduction_emotion_wave/widgets/carousel_indicator.dart';
import 'package:assigment_introduction_emotion_wave/widgets/custom_appbar.dart';
import 'package:assigment_introduction_emotion_wave/widgets/like_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:provider/provider.dart';

import '../contants.dart';
import '../provider/provider.dart';

class MainProfile3 extends StatefulWidget {
  const MainProfile3({super.key, this.index});

  final int? index;

  @override
  State<MainProfile3> createState() => _MainProfile3State();
}

class _MainProfile3State extends State<MainProfile3>
    with TickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragUpdate: (DragUpdateDetails details) {
        final delta = details.delta.dy / 100;
        animationController.value += delta;
      },
      onVerticalDragEnd: (DragEndDetails details) {
        if (animationController.value < 0.5) {
          animationController.reverse();
        } else {
          animationController.forward();
          context.read<AppProvider>().dismissCard(widget.index!);
        }
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: const DecorationImage(
              image: AssetImage(Constants.mainImage3), fit: BoxFit.cover),
        ),
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.white.withOpacity(.2)),
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.transparent,
                    Colors.transparent,
                    Constants.scaffoldColor,
                  ],
                ),
              ),
            ),
            CarouselIndicator(index: context.watch<AppProvider>().index),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const LikeContainer(icon: Constants.greyStar, text: '29,930'),
                  const SizedBox(
                    height: 5,
                  ),
                  RichText(
                      text: const TextSpan(
                    children: [
                      TextSpan(
                        text: '잭과분홍콩나물',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      TextSpan(
                        text: '25',
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )),
                  const SizedBox(
                    height: 5,
                  ),
                  LikeContainerWithPNG(
                    icon: Constants.loveRed,
                    text: '진지한 연애를 찾는 중',
                    textColor: Constants.redColor,
                    borderColor: Constants.redColor,
                    backgroundColor: const Color(0xff621133).withOpacity(.45),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Row(
                    children: [
                      LikeContainerWithPNG(
                        icon: Constants.cup,
                        text: '전혀 안 함',
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      LikeContainerWithPNG(
                        icon: Constants.smolk,
                        text: '비흡연',
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const LikeContainerWithPNG(
                    icon: Constants.strong,
                    text: '매일 1시간 이상',
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Row(
                    children: [
                      LikeContainerWithPNG(
                        icon: Constants.together,
                        text: '만나는 걸 좋아함',
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      LikeContainerWithPNG(
                        hasIcon: false,
                        text: 'INFP',
                        icon: '',
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Center(
                    child: SvgPicture.asset(Constants.arrowDown),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 65,
              right: 25,
              child: Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  border: GradientBoxBorder(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Constants.gradiantPurple1,
                          Constants.gradiantPurple2,
                        ]),
                    width: 1,
                  ),
                  // borderRadius: BorderRadius.circular(16)
                ),
                child: Center(
                  child: SvgPicture.asset(Constants.love),
                ),
              ),
            ),
            Positioned(
              top: 10,
              left: 0,
              child: InkWell(
                onTap: () {
                  context.read<AppProvider>().goToPreviousPage(context);
                },
                child: Container(
                  height: 200,
                  width: 100,
                  color: Colors.transparent,
                ),
              ),
            ),
            Positioned(
              top: 10,
              right: 0,
              child: InkWell(
                onTap: () {
                  context.read<AppProvider>().goToNextPage(context);
                },
                child: Container(
                  height: 200,
                  width: 100,
                  color: Colors.transparent,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
