import 'package:flutter/material.dart';
import 'package:my_portfolio/config.dart';
import 'package:my_portfolio/constants/assets_path.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../widgets/contacts_section/contacts_section.dart';
import '../widgets/footer/footer.dart';
import '../widgets/header/drawer_mobile.dart';
import '../widgets/header/header.dart';
import '../widgets/main_section/main_section.dart';
import '../widgets/projects_section/projects_section.dart';
import '../widgets/skills_section/skills_section.dart';
import '../utils/download_file.dart';

// TODO: Publish to Netify? GitHub?

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navKeys = List.generate(4, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    void scrollToSection(int navIndex) {
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
        endDrawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? DrawerMobile(
                onNavItemTap: (int navIndex) {
                  // Navigation Function
                  scrollToSection(navIndex);
                },
                onCloseTap: () => scaffoldKey.currentState?.closeEndDrawer(),
              )
            : null,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            currentTheme.switchTheme();
          },
          child: Icon(
            currentTheme.currentTheme() == ThemeMode.light
                ? Icons.dark_mode_rounded
                : Icons.light_mode_rounded,
          ),
        ),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              snap: true,
              actions: [
                sizingInformation.deviceScreenType == DeviceScreenType.mobile
                    ? Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Builder(
                          builder: (context) => IconButton(
                            icon: const Icon(Icons.menu_rounded),
                            onPressed: () =>
                                Scaffold.of(context).openEndDrawer(),
                            tooltip: MaterialLocalizations.of(context)
                                .openAppDrawerTooltip,
                          ),
                        ),
                      )
                    : const SizedBox(
                        width: 10,
                      )
              ],
              title: Header(
                onNavItemTap: (int navIndex) {
                  // Navigation Function
                  scrollToSection(navIndex);
                },
              ),
            ),
            SliverToBoxAdapter(
              key: navKeys[0],
              child: MainSection(
                onButtonTap: () {
                  downloadFile(
                    cvFilePath,
                    "Theng Yuan Yuan - CV",
                  );
                },
              ),
            ),
            SliverToBoxAdapter(
              key: navKeys[1],
              child: const SkillsSection(),
            ),
            SliverToBoxAdapter(
              key: navKeys[2],
              child: const ProjectsSection(),
            ),
            SliverToBoxAdapter(
              key: navKeys[3],
              child: const ContactsSection(),
            ),
            const SliverToBoxAdapter(
              child: Footer(),
            ),
          ],
        ),
      );
    });
  }
}
