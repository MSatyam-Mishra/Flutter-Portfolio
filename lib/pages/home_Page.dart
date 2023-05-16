import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterportfolio/constants/design_elements.dart';
import 'package:flutterportfolio/pages/home_page_large.dart';
import 'package:flutterportfolio/pages/home_page_mobile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    final checkOrientation = MediaQuery.of(context).orientation;
    return Scaffold(
        backgroundColor: bgColor,
        body: SingleChildScrollView(
          child: (checkOrientation == Orientation.landscape) ||
                  (screenWidth >= 700)
              ? HomePageLarge()
              : HomePageMobile(),
        ));
  }
}
