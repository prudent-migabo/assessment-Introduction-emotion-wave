import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../contants.dart';

class LikeContainer extends StatelessWidget {
  const LikeContainer(
      {super.key,
      required this.icon,
      required this.text,
      this.hasIcon = true,
      this.borderColor,
      this.backgroundColor,
      this.textColor});

  final String icon;
  final String text;
  final bool? hasIcon;
  final Color? borderColor;
  final Color? backgroundColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 7),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: backgroundColor ?? Constants.blackColor,
        border: Border.all(color: borderColor ?? Colors.white.withOpacity(.2)),
      ),
      child: hasIcon!
          ? Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  icon,
                  width: 13,
                  height: 13,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  text,
                  style: TextStyle(
                      color: textColor ?? Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                ),
              ],
            )
          : Text(
              text,
              style: TextStyle(
                  color: textColor ?? Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            ),
    );
  }
}

class LikeContainerWithPNG extends StatelessWidget {
  const LikeContainerWithPNG(
      {super.key,
      required this.icon,
      required this.text,
      this.hasIcon = true,
      this.borderColor,
      this.backgroundColor,
      this.textColor});

  final String icon;
  final String text;
  final bool? hasIcon;
  final Color? borderColor;
  final Color? backgroundColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: backgroundColor ?? Constants.blackColor,
        border: Border.all(color: borderColor ?? Colors.white.withOpacity(.2)),
      ),
      child: hasIcon!
          ? Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  icon,
                  width: 16,
                  height: 16,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  text,
                  style: TextStyle(
                      color: textColor ?? Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                ),
              ],
            )
          : Text(
              text,
              style: TextStyle(
                  color: textColor ?? Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            ),
    );
  }
}
