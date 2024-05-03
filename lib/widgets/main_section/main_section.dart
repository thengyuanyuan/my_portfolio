import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/main_section/main_desktop.dart';
import 'package:my_portfolio/widgets/main_section/main_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

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
