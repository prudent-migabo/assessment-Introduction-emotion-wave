import 'package:flutter/material.dart';

import '../contants.dart';

class CarouselIndicator extends StatelessWidget {
  const CarouselIndicator({
    super.key,
    this.index,
  });

  final int? index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0, left: 15, right: 15),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 3,
              decoration: BoxDecoration(
                color: index == 0
                    ? Constants.primaryColor
                    : Constants.carouselIndicatorColor,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Expanded(
            child: Container(
              height: 3,
              decoration: BoxDecoration(
                color: index == 1
                    ? Constants.primaryColor
                    : Constants.carouselIndicatorColor,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Expanded(
            child: Container(
              height: 3,
              decoration: BoxDecoration(
                color: index == 2
                    ? Constants.primaryColor
                    : Constants.carouselIndicatorColor,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Expanded(
            child: Container(
              height: 3,
              decoration: BoxDecoration(
                color: index == 3
                    ? Constants.primaryColor
                    : Constants.carouselIndicatorColor,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Expanded(
            child: Container(
              height: 3,
              decoration: BoxDecoration(
                color: index == 4
                    ? Constants.primaryColor
                    : Constants.carouselIndicatorColor,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
