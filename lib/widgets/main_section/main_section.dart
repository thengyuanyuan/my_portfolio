// TODO: fix this web-only libraries
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../widgets/main_section/main_desktop.dart';
import '../../widgets/main_section/main_mobile.dart';
import '../../constants/assets.dart';

class MainSection extends StatelessWidget {
  MainSection({
    super.key,
  });

  final List<String> roles = [
    "A Fresh Graduate",
    "A Flutter Developer",
    "A Software Engineer",
  ];

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      tablet: (BuildContext context) => MainDesktop(
        onButtonTap: () => html.window.open(cvFilePath, "thengyuanyuan_cv.pdf"),
        roles: roles,
      ),
      mobile: (BuildContext context) => MainMobile(
        onButtonTap: () => html.window.open(cvFilePath, "thengyuanyuan_cv.pdf"),
        roles: roles,
      ),
    );
  }
}
