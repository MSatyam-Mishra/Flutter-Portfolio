import 'package:flutter/material.dart';

import '../constants/design_elements.dart';

class ProfileImageWidget extends StatelessWidget {
  const ProfileImageWidget({
    Key? key,
    required this.checkOrientation,
    required this.screenWidth,
  }) : super(key: key);

  final Orientation checkOrientation;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
        //profile Image
        decoration: defaultTileDecoration.copyWith(
            color: Color.fromARGB(255, 219, 18, 219)),
        height: 350,
        width:
            (checkOrientation == Orientation.landscape) || (screenWidth >= 700)
                ? (screenWidth * 0.20) - 25
                : screenWidth - 40,
        child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              "assets/images/profile.png",
              fit: BoxFit.cover,
            )));
  }
}
