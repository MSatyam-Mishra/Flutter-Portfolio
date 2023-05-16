import 'package:flutter/material.dart';

import '../constants/design_elements.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    Key? key,
    required this.checkOrientation,
    required this.screenWidth,
  }) : super(key: key);

  final Orientation checkOrientation;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
        //app bar
        decoration: defaultTileDecoration,
        height: 50,
        width:
            (checkOrientation == Orientation.landscape) || (screenWidth >= 700)
                ? screenWidth / 2 - 40
                : screenWidth - 40,
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "My Resume",
                style: subHeading,
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  child: Icon(
                    Icons.menu,
                    color: Colors.white.withOpacity(0.5),
                    size: 25,
                  )),
            ],
          ),
        ));
  }
}
