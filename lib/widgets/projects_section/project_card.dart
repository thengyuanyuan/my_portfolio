// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;
// import 'package:url_launcher/url_launcher.dart';

import 'package:flutter/material.dart';
import 'package:flutter_devicon/flutter_devicon.dart';
import 'package:intl/intl.dart';

import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/models/project_model.dart';

class ProjectCardWidget extends StatelessWidget {
  final ProjectModel projectModel;
  const ProjectCardWidget({
    super.key,
    required this.projectModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: 380,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: CustomColor.bgLight2,
      ),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            color: Colors.white,
            height: 150,
            width: 300,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  projectModel.images[0].imagePath,
                  fit: BoxFit.fitHeight,
                ),
                Positioned(
                  right: 10,
                  bottom: 5,
                  child: Text(
                    projectModel.type!,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      backgroundColor:
                          CustomColor.yellowSecondary.withOpacity(0.6),
                    ),
                  ),
                )
              ],
            ),
          ),
          // Title
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 15, 10, 10),
            child: Text(
              projectModel.title,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: CustomColor.whitePrimary,
              ),
            ),
          ),
          // Description
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: Text(
                projectModel.description,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontWeight: FontWeight.w200,
                  fontSize: 14,
                  color: CustomColor.whiteSecondary,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
            child: Row(
              children: [
                for (int i = 0; i < projectModel.skillTags.length; i++)
                  Padding(
                    padding: const EdgeInsets.only(right: 5.0),
                    child: Icon(
                      projectModel.skillTags[i].icon,
                      color: Colors.grey,
                    ),
                  ),
                const Spacer(),
                if (projectModel.date != null)
                  Text(DateFormat.yMMM().format(projectModel.date!)),
              ],
            ),
          ),
          // Footer
          Container(
            color: CustomColor.bgLight1,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Row(
              children: [
                const Text(
                  "Take a look:",
                  style: TextStyle(
                    color: CustomColor.yellowSecondary,
                    fontSize: 12,
                  ),
                ),
                const Spacer(),
                if (projectModel.iosLink != null)
                  Tooltip(
                    message: "Get it in IOS",
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: InkWell(
                        // onTap: () async {
                        //   if (!await launchUrl(
                        //       Uri.parse(projectModel.iosLink!))) {
                        //     throw Exception(
                        //         'Could not launch ${projectModel.iosLink!}');
                        //   }
                        // },
                        onTap: () {
                          js.context.callMethod("open", [projectModel.iosLink]);
                        },
                        child: const Icon(Icons.apple_outlined),
                      ),
                    ),
                  ),
                if (projectModel.androidLink != null)
                  Tooltip(
                    message: "Get it in Android",
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: InkWell(
                        // onTap: () async {
                        //   if (! await launchUrl(
                        //       Uri.parse(projectModel.androidLink!))) {
                        //     throw Exception(
                        //         'Could not launch ${projectModel.androidLink!}');
                        //   }
                        // },
                        onTap: () {
                          js.context
                              .callMethod("open", [projectModel.androidLink]);
                        },
                        child: const Icon(Icons.android_rounded),
                      ),
                    ),
                  ),
                if (projectModel.webLink != null)
                  Tooltip(
                    message: "Open the link",
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: InkWell(
                        // onTap: () async {
                        //   if (!await launchUrl(
                        //       Uri.parse(projectModel.webLink!))) {
                        //     throw Exception(
                        //         'Could not launch ${projectModel.webLink!}');
                        //   }
                        // },
                        onTap: () {
                          js.context.callMethod("open", [projectModel.webLink]);
                        },
                        child: const Icon(Icons.web),
                      ),
                    ),
                  ),
                if (projectModel.githubLink != null)
                  Tooltip(
                    message: "Go to GitHub Repo",
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: InkWell(
                        // onTap: () async {
                        //   if (!await launchUrl(
                        //       Uri.parse(projectModel.githubLink!))) {
                        //     throw Exception(
                        //         'Could not launch ${projectModel.githubLink!}');
                        //   }
                        // },
                        onTap: () {
                          js.context
                              .callMethod("open", [projectModel.githubLink]);
                        },
                        child: const Icon(FlutterDEVICON.github_original),
                      ),
                    ),
                  ),
                if (projectModel.documentLink != null)
                  Tooltip(
                    message: "Open The Document",
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: InkWell(
                        // onTap: () async {
                        //   if (!await launchUrl(
                        //       Uri.parse(projectModel.documentLink!))) {
                        //     throw Exception(
                        //         'Could not launch ${projectModel.documentLink!}');
                        //   }
                        // },
                        onTap: () {
                          js.context
                              .callMethod("open", [projectModel.documentLink]);
                        },
                        child: const Icon(Icons.file_present_rounded),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
