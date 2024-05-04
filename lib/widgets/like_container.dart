import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../contants.dart';

class LikeContainer extends StatelessWidget {
  const LikeContainer({super.key, required this.isRedStar, required this.text,});
  
  final bool isRedStar;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 7),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Constants.blackColor,
        border: Border.all(color: Colors.white.withOpacity(.2))
      ),
      child: Row(
        children: [
          SvgPicture.asset(isRedStar ? Constants.redStar : Constants.greyStar, width: 10, height: 10,),
          const SizedBox(width: 5,),
          Text(text, style: TextStyle(color: Colors.white, fontSize: 12),),
        ],
      ),
    );
  }
}
