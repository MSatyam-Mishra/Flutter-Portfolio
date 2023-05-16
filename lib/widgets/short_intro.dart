import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../constants/design_elements.dart';
import '../data/user_data.dart';

class ShortIntroWidget extends StatelessWidget {
  const ShortIntroWidget({
    Key? key,
    required this.checkOrientation,
    required this.screenWidth,
  }) : super(key: key);

  final Orientation checkOrientation;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20),
        child: AutoSizeText(
          shortIntro,
          style: subHeading1,
          maxLines: null,
        ),
        //Short Intro
        decoration: defaultTileDecoration,
        height: (checkOrientation == Orientation.landscape) ? 200 : 300,
        width:
            (checkOrientation == Orientation.landscape) || (screenWidth >= 700)
                ? screenWidth / 2 - 10
                : screenWidth - 40);
  }
}
