import 'package:flutter/material.dart';

import '../widgets/app_bar.dart';
import '../widgets/colored_tiles.dart';
import '../widgets/full_intro.dart';
import '../widgets/name_contact.dart';
import '../widgets/profile_image.dart';
import '../widgets/project_image.dart';
import '../widgets/short_intro.dart';

class HomePageLarge extends StatelessWidget {
  HomePageLarge({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    final checkOrientation = MediaQuery.of(context).orientation;
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  ShortIntroWidget(
                      checkOrientation: checkOrientation,
                      screenWidth: screenWidth),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ExperienceWidget(
                          checkOrientation: checkOrientation,
                          screenWidth: screenWidth),
                      SizedBox(
                        width: 10,
                      ),
                      ProjectTileWidget(
                          checkOrientation: checkOrientation,
                          screenWidth: screenWidth),
                      SizedBox(
                        width: 10,
                      ),
                      SkillTileWidget(
                          checkOrientation: checkOrientation,
                          screenWidth: screenWidth)
                    ],
                  )
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  AppBarWidget(
                      checkOrientation: checkOrientation,
                      screenWidth: screenWidth),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      ProfileImageWidget(
                          checkOrientation: checkOrientation,
                          screenWidth: screenWidth),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          NameContactWidget(
                              checkOrientation: checkOrientation,
                              screenWidth: screenWidth),
                          const SizedBox(
                            height: 10,
                          ),
                          UserLocation(
                              checkOrientation: checkOrientation,
                              screenWidth: screenWidth),
                          const SizedBox(
                            height: 10,
                          ),
                          SocialSection(
                              checkOrientation: checkOrientation,
                              screenWidth: screenWidth)
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              ProjectImageWidget(
                  checkOrientation: checkOrientation, screenWidth: screenWidth),
              const SizedBox(
                width: 10,
              ),
              FullIntroWidget(
                  checkOrientation: checkOrientation, screenWidth: screenWidth)
            ],
          )
        ],
      ),
    );
  }
}

//image box
Container datingCard = Container(
  child: ClipRRect(
      child: Stack(
    children: [Container()],
  )),
);
