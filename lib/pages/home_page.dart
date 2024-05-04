import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../widgets/contacts_section/contacts_section.dart';
import '../widgets/header/drawer_mobile.dart';
import '../widgets/header/header.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.black,
        // TODO: set theme color
        // backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        endDrawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? DrawerMobile(
                onCloseTap: () => scaffoldKey.currentState?.closeEndDrawer(),
              )
            : null,
        // floatingActionButton: InkWell(
        //   onTap: () {},
        //   child: Icon(Icons.dark_mode),
        // ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            // HEADER (MENU)
            Header(scaffoldKey: scaffoldKey),
            // MAIN (INTRODUCTION)
            // const MainSection(),
            // SKILLS
            // const SkillsSection(),
            // PROJECTS
            // const ProjectsSection(),
            // CONTACTS
            const ContactsSection(),
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
