import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../constants/nav_items.dart';
import 'site_logo.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
    required this.onNavItemTap,
    this.onLogoTap,
  });

  final VoidCallback? onLogoTap;
  final Function(int) onNavItemTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.maxFinite,
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      child:
          ResponsiveBuilder(builder: (BuildContext context, sizingInformation) {
        return Row(
          children: [
            SiteLogo(onTap: onLogoTap),
            const Spacer(),
            sizingInformation.deviceScreenType != DeviceScreenType.mobile
                ? navItemRow()
                : const Spacer(),
          ],
        );
      }),
    );
  }

  Row navItemRow() {
    return Row(
      children: [
        for (int i = 0; i < navItemList.length; i++)
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: TextButton(
              onPressed: () {
                onNavItemTap(i);
              },
              child: Text(
                navItemList[i].title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  // color: CustomColor.whitePrimary,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
