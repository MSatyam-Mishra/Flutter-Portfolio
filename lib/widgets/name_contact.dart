import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../constants/design_elements.dart';
import '../data/user_data.dart';

class NameContactWidget extends StatelessWidget {
  const NameContactWidget({
    Key? key,
    required this.checkOrientation,
    required this.screenWidth,
  }) : super(key: key);

  final Orientation checkOrientation;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
        //name and contact details
        decoration: defaultTileDecoration,
        padding: const EdgeInsets.only(left: 20, right: 20),
        height: 50,
        width:
            (checkOrientation == Orientation.landscape) || (screenWidth >= 700)
                ? (screenWidth * 0.30) - 25
                : screenWidth - 40,
        child: Center(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AutoSizeText(
                  "Name",
                  style: bodyText.copyWith(),
                  maxLines: 2,
                  textAlign: TextAlign.center,
                ),
                AutoSizeText(
                  name,
                  style: bodyText.copyWith(),
                  maxLines: 2,
                  textAlign: TextAlign.center,
                ),
              ]),
        ));
  }
}

class UserLocation extends StatelessWidget {
  const UserLocation({
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
        //profile Image
        decoration: defaultTileDecoration,
        height: 230,
        width:
            (checkOrientation == Orientation.landscape) || (screenWidth >= 700)
                ? (screenWidth * 0.30) - 25
                : screenWidth - 40,
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Based in:",
              ),
              Text("India")
            ],
          ),
          Image.asset(
            "assets/images/map.png",
            fit: BoxFit.cover,
            height: 170,
          )
        ]));
  }
}

class SocialSection extends StatelessWidget {
  const SocialSection({
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
        padding: const EdgeInsets.all(5),
        decoration: defaultTileDecoration,
        height: 50,
        width:
            (checkOrientation == Orientation.landscape) || (screenWidth >= 700)
                ? (screenWidth * 0.30) - 25
                : screenWidth - 40,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          SizedBox(
            width: 40,
            height: 40,
            child: Image.asset(
              "assets/images/linkedin.png",
              fit: BoxFit.contain,
              height: 40,
              width: 40,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            width: 40,
            height: 40,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Color.fromARGB(255, 39, 39, 39)),
            child: Image.asset(
              "assets/images/dribble.png",
              fit: BoxFit.contain,
              height: 25,
              width: 25,
            ),
          ),
          Container(
            width: 40,
            height: 40,
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Color.fromARGB(255, 39, 39, 39)),
            child: Image.asset(
              "assets/images/twitter.png",
              fit: BoxFit.contain,
              height: 25,
              width: 25,
            ),
          ),
          Container(
            width: 40,
            height: 40,
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Color.fromARGB(255, 39, 39, 39)),
            child: Image.asset(
              "assets/images/github.png",
              fit: BoxFit.contain,
              height: 25,
              width: 25,
            ),
          )
        ]));
  }
}
