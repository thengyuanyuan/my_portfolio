import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../widgets/drawer_mobile.dart';
import '../widgets/header_desktop.dart';
import '../widgets/header_mobile.dart';
import '../widgets/main_desktop.dart';
import '../widgets/main_mobile.dart';

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
            ScreenTypeLayout.builder(
              tablet: (BuildContext context) =>
                  const HeaderDesktop(onLogoTap: null),
              mobile: (BuildContext context) => HeaderMobile(
                onLogoTap: null,
                onMenuTap: () => scaffoldKey.currentState?.openEndDrawer(),
              ),
            ),
            // MAIN (INTRODUCTION)
            ScreenTypeLayout.builder(
              tablet: (BuildContext context) => const MainDesktop(),
              mobile: (BuildContext context) => const MainMobile(),
            ),
            // SKILLS
            Container(
              height: 500,
              width: double.maxFinite,
              color: Colors.green,
            ),
            // PROJECTS
            Container(
              height: 500,
              width: double.maxFinite,
              color: Colors.blue,
            ),
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
