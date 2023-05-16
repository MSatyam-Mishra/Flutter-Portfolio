import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../constants/design_elements.dart';

class SkillTileWidget extends StatelessWidget {
  const SkillTileWidget({
    Key? key,
    required this.checkOrientation,
    required this.screenWidth,
  }) : super(key: key);

  final Orientation checkOrientation;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        decoration: defaultTileDecoration.copyWith(
            gradient: const LinearGradient(colors: [
              Color.fromARGB(255, 5, 156, 149),
              Color.fromARGB(255, 48, 158, 140)
            ]),
            color: null),
        height: 200,
        width:
            (checkOrientation == Orientation.landscape) || (screenWidth >= 700)
                ? (screenWidth / 2) / 3 - 10
                : screenWidth - 40,
        //skill tile 3
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AutoSizeText(
              "Skills",
              style: subHeading1,
              maxLines: 1,
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(
                  bottom: 20,
                  left: checkOrientation == Orientation.portrait
                      ? screenWidth / 4
                      : 0,
                  right: checkOrientation == Orientation.portrait
                      ? screenWidth / 4
                      : 0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Image.asset(
                        "assets/images/flutter.png",
                        fit: BoxFit.contain,
                        width: 40,
                        height: 40,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      flex: 1,
                      child: Image.asset(
                        "assets/images/dart.png",
                        fit: BoxFit.contain,
                        width: 40,
                        height: 40,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      flex: 1,
                      child: Image.asset(
                        "assets/images/firebase.png",
                        fit: BoxFit.contain,
                        width: 40,
                        height: 40,
                      ),
                    )
                  ]),
            ),
          ],
        ));
  }
}

class ProjectTileWidget extends StatelessWidget {
  const ProjectTileWidget({
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
        //project tile 2
        decoration: defaultTileDecoration.copyWith(
            color: null,
            gradient: const LinearGradient(colors: [
              Color.fromARGB(255, 255, 78, 84),
              Color.fromARGB(255, 253, 107, 207)
            ])),
        height: 200,
        width:
            (checkOrientation == Orientation.landscape) || (screenWidth >= 700)
                ? (screenWidth / 2) / 3 - 10
                : screenWidth - 40,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AutoSizeText(
                "Worked on",
                maxLines: 1,
                style: bodyText,
              ),
              AutoSizeText(
                "4 Flutter Project",
                style: subHeading1,
                maxLines: 2,
              )
            ]));
  }
}

class ExperienceWidget extends StatelessWidget {
  const ExperienceWidget({
    Key? key,
    required this.screenWidth,
    required this.checkOrientation,
  }) : super(key: key);

  final double screenWidth;
  final Orientation checkOrientation;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        // experinece tile
        decoration: defaultTileDecoration.copyWith(
            color: null,
            gradient: const LinearGradient(colors: [
              Color.fromARGB(255, 2, 55, 71),
              Color.fromARGB(255, 69, 127, 235)
            ])),
        height: 200,
        width:
            (checkOrientation == Orientation.landscape) || (screenWidth >= 700)
                ? (screenWidth / 2) / 3 - 10
                : screenWidth - 40,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "6+",
                style: subHeading1,
              ),
              AutoSizeText(
                "Months Experience on SEO",
                style: bodyText,
                maxLines: 3,
              )
            ]));
  }
}
