import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/header/header_desktop.dart';
import 'package:my_portfolio/widgets/header/header_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
    required this.onMenuTapMobile,
    required this.onNavItemTap,
  });

  final VoidCallback onMenuTapMobile;
  final Function(int) onNavItemTap;

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      tablet: (BuildContext context) =>
          HeaderDesktop(onLogoTap: null, onNavItemTap: onNavItemTap),
      mobile: (BuildContext context) => HeaderMobile(
        onLogoTap: null,
        onMenuTap: onMenuTapMobile,
      ),
    );
  }
}
