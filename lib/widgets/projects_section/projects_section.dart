import 'package:flutter/material.dart';
import 'package:my_portfolio/styles/styles.dart';
import 'package:my_portfolio/widgets/projects_section/project_slider.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      padding: const EdgeInsets.only(top: 50, bottom: 80, left: 25, right: 25),
      child: Column(
        children: [
          // Projects title
          Text('My Projects', style: kSectionTitleTextStyle),
          const SizedBox(
            height: 50,
          ),
          // Projects
          const ProjectSlider(),
        ],
      ),
    );
  }
}
