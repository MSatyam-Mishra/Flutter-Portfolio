import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../constants/design_elements.dart';
import '../data/user_data.dart';

class FullIntroWidget extends StatelessWidget {
  const FullIntroWidget({
    Key? key,
    required this.checkOrientation,
    required this.screenWidth,
  }) : super(key: key);

  final double screenWidth;
  final Orientation checkOrientation;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        //full intro
        decoration: defaultTileDecoration,
        height: (checkOrientation == Orientation.landscape) ? 350 : 500,
        width:
            (checkOrientation == Orientation.landscape) || (screenWidth >= 700)
                ? screenWidth * 0.4 - 25
                : screenWidth - 40,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "About Me",
              style: subHeading.copyWith(fontSize: 24),
            ),
            const SizedBox(
              height: 10,
            ),
            AutoSizeText(
              aboutMe,
              style: bodyText,
              maxLines: null,
              minFontSize: 15,
            ),
          ],
        ));
  }
}
