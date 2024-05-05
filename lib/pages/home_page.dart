import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../widgets/contacts_section/contacts_section.dart';
import '../widgets/footer.dart';
import '../widgets/header/drawer_mobile.dart';
import '../widgets/header/header.dart';
import '../widgets/main_section/main_section.dart';
import '../widgets/projects_section/projects_section.dart';
import '../widgets/skills_section/skills_section.dart';

// TODO: Publish to Netify? GitHub?

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navKeys = List.generate(4, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    void scrollToSection(int navIndex) {
      if (navIndex == 4) {
        // Get CV
        return;
      }
      final key = navKeys[navIndex];
      Scrollable.ensureVisible(
        key.currentContext!,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }

    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.black,
        // TODO: set theme color
        // backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        endDrawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? DrawerMobile(
                onNavItemTap: (int navIndex) {
                  // Navigation Function
                  scrollToSection(navIndex);
                },
                onCloseTap: () => scaffoldKey.currentState?.closeEndDrawer(),
              )
            : null,
        // floatingActionButton: InkWell(
        //   onTap: () {},
        //   child: Icon(Icons.dark_mode),
        // ),
        body: SingleChildScrollView(
          controller: scrollController,
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              // HEADER (MENU)
              Header(
                onNavItemTap: (int navIndex) {
                  // Navigation Function
                  scrollToSection(navIndex);
                },
                onMenuTapMobile: () =>
                    scaffoldKey.currentState?.openEndDrawer(),
              ),
              // MAIN (INTRODUCTION)
              MainSection(key: navKeys.first),
              // SKILLS
              SkillsSection(key: navKeys[1]),
              // PROJECTS
              ProjectsSection(key: navKeys[2]),
              // CONTACTS
              ContactsSection(key: navKeys[3]),
              // FOOTER
              const Footer(),
            ],
          ),
        ),
      );
    });
  }
}
