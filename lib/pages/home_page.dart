import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../constants/colors.dart';
import '../widgets/drawer_mobile.dart';
import '../widgets/header_desktop.dart';
import '../widgets/header_mobile.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return Scaffold(
        key: scaffoldKey,
        backgroundColor: CustomColor.scaffoldBg,
        endDrawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? DrawerMobile(scaffoldKey: scaffoldKey)
            : null,
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            // HEADER, MAINMENU
            Header(scaffoldKey: scaffoldKey),
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
            ),
            // CONTACTS
            Container(
              height: 500,
              width: double.maxFinite,
            ),
            // FOOTER
            Container(
              height: 500,
              width: double.maxFinite,
            ),
          ],
        ),
      );
    });
  }
}

class Header extends StatelessWidget {
  const Header({
    super.key,
    required this.scaffoldKey,
  });

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      tablet: (BuildContext context) => const HeaderDesktop(),
      mobile: (BuildContext context) => HeaderMobile(
        onLogoTap: null,
        onMenuTap: () {
          scaffoldKey.currentState?.openEndDrawer();
        },
      ),
    );
  }
}
