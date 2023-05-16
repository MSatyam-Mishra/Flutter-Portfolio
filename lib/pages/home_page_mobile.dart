import 'package:flutter/material.dart';
import '../widgets/app_bar.dart';
import '../widgets/colored_tiles.dart';
import '../widgets/full_intro.dart';
import '../widgets/name_contact.dart';
import '../widgets/profile_image.dart';
import '../widgets/project_image.dart';
import '../widgets/short_intro.dart';

class HomePageMobile extends StatelessWidget {
  HomePageMobile({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    final checkOrientation = MediaQuery.of(context).orientation;
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AppBarWidget(
              checkOrientation: checkOrientation, screenWidth: screenWidth),
          SizedBox(
            height: 20,
          ),
          NameContactWidget(
              checkOrientation: checkOrientation, screenWidth: screenWidth),
          SizedBox(
            height: 20,
          ),
          ShortIntroWidget(
              checkOrientation: checkOrientation, screenWidth: screenWidth),
          SizedBox(
            height: 20,
          ),
          ProfileImageWidget(
              checkOrientation: checkOrientation, screenWidth: screenWidth),
          SizedBox(
            height: 20,
          ),
          FullIntroWidget(
            screenWidth: screenWidth,
            checkOrientation: checkOrientation,
          ),
          SizedBox(
            height: 20,
          ),
          ExperienceWidget(
            screenWidth: screenWidth,
            checkOrientation: checkOrientation,
          ),
          SizedBox(
            height: 20,
          ),
          ProjectTileWidget(
              checkOrientation: checkOrientation, screenWidth: screenWidth),
          SizedBox(
            height: 20,
          ),
          SkillTileWidget(
              checkOrientation: checkOrientation, screenWidth: screenWidth),
          SizedBox(
            height: 20,
          ),
          ProjectImageWidget(
              checkOrientation: checkOrientation, screenWidth: screenWidth),
        ],
      ),
    );
  }
}
