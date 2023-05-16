import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutterportfolio/model/project_image_model.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants/design_elements.dart';

class ProjectImageWidget extends StatelessWidget {
  const ProjectImageWidget({
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
        decoration: defaultTileDecoration,
        height: 350,
        width:
            (checkOrientation == Orientation.landscape) || (screenWidth >= 700)
                ? screenWidth * 0.6 - 25
                : screenWidth - 40,
        //project images
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AutoSizeText(
                  "UI Portfolio",
                  style: subHeading,
                ),
                AutoSizeText(
                  "See All",
                  style: subHeading.copyWith(
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 116, 115, 115)),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 260,
              width: (checkOrientation == Orientation.landscape) ||
                      (screenWidth >= 700)
                  ? screenWidth * 0.6 - 25
                  : screenWidth - 40,
              child: ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(
                  width: 20,
                ),
                scrollDirection: Axis.horizontal,
                itemCount: imageList.length,
                itemBuilder: (context, index) {
                  return ImageCard(projectImageModel: imageList[index]);
                },
              ),
            )
          ],
        ));
  }
}

class ImageCard extends StatelessWidget {
  ImageCard({super.key, required this.projectImageModel});

  ProjectImageModel projectImageModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final Uri url = Uri.parse(projectImageModel.url);
        await launchUrl(url);
      },
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
        height: 260,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Image.asset(
            projectImageModel.image,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}


/*

SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  InkWell(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          height: 260,
                          // width: (screenWidth * 0.6 - 25) / 3,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              "assets/images/project_images/green_site.png",
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Container(
                          width: 370,
                          height: 260,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.black.withOpacity(0.5)),
                        ),
                        Center(
                            child: Text(
                          "Read More",
                          style: bodyText,
                        ))
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    height: 260,
                    //    width: (screenWidth * 0.6 - 25) / 3,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "assets/images/project_images/note_app.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    height: 260,
                    //    width: (screenWidth * 0.6 - 25) / 3,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "assets/images/project_images/swiggy.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ])),
 */