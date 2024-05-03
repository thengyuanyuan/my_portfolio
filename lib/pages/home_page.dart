import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../widgets/drawer_mobile.dart';
import '../widgets/header_desktop.dart';
import '../widgets/header_mobile.dart';
import '../widgets/main_desktop.dart';
import '../widgets/main_mobile.dart';
import '../widgets/project_slider.dart';
import '../widgets/skills_desktop.dart';
import '../widgets/skills_mobile.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return Scaffold(
        key: scaffoldKey,
        // backgroundColor: CustomColor.scaffoldBg,
        endDrawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? DrawerMobile(
                onCloseTap: () => scaffoldKey.currentState?.closeEndDrawer(),
              )
            : null,
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            // HEADER (MENU)
            HeaderSection(scaffoldKey: scaffoldKey),
            // MAIN (INTRODUCTION)
            // const MainSection(),
            // SKILLS
            // const SkillsSection(),
            // PROJECTS
            const ProjectsSection(),
            // CONTACTS
            Container(
              height: 500,
              width: double.maxFinite,
              color: Colors.red,
            ),
            // FOOTER
            Container(
              height: 500,
              width: double.maxFinite,
              color: Colors.black,
            ),
          ],
        ),
      );
    });
  }
}

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 25),
      child: const Column(
        children: [
          // Projects title
          Text(
            'My Projects',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          // TODO: https://www.youtube.com/watch?v=ntyjRSTMtJ4&list=PLyfGAIknOAuRCyNQerjnQhzsZyt4mpEmj&index=13
          ProjectSlider(),
        ],
      ),
    );
  }
}

class HeaderSection extends StatelessWidget {
  const HeaderSection({
    super.key,
    required this.scaffoldKey,
  });

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      tablet: (BuildContext context) => const HeaderDesktop(onLogoTap: null),
      mobile: (BuildContext context) => HeaderMobile(
        onLogoTap: null,
        onMenuTap: () => scaffoldKey.currentState?.openEndDrawer(),
      ),
    );
  }
}

class MainSection extends StatelessWidget {
  const MainSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      tablet: (BuildContext context) => const MainDesktop(),
      mobile: (BuildContext context) => const MainMobile(),
    );
  }
}

class SkillsSection extends StatelessWidget {
  const SkillsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 25),
      color: Colors.grey[900],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Section title
          const Text(
            'My Skills',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary,
            ),
          ),
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
