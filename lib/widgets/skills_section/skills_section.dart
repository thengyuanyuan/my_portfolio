import 'package:flutter/material.dart';
import 'package:my_portfolio/styles/styles.dart';
import 'package:my_portfolio/widgets/skills_section/skills_desktop.dart';
import 'package:my_portfolio/widgets/skills_section/skills_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      padding: const EdgeInsets.only(top: 50, bottom: 80, left: 25, right: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Section title
          Text('My Skills', style: kSectionTitleTextStyle),
          const SizedBox(
            height: 50,
          ),
          // Skills Content
          ScreenTypeLayout.builder(
            desktop: (BuildContext context) => const SkillsDesktop(),
            mobile: (BuildContext context) => const SkillsMobile(),
          ),
        ],
      ),
    );
  }
}
