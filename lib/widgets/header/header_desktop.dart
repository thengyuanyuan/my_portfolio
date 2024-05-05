import 'package:flutter/material.dart';
import 'package:my_portfolio/styles/styles.dart';

import '../../../constants/colors.dart';
import '../../../constants/nav_items.dart';
import 'site_logo.dart';

class HeaderDesktop extends StatelessWidget {
  final VoidCallback? onLogoTap;
  final Function(int) onNavItemTap;
  const HeaderDesktop({
    super.key,
    this.onLogoTap,
    required this.onNavItemTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.maxFinite,
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      decoration: kHeaderDecoration,
      child: Row(
        children: [
          SiteLogo(onTap: onLogoTap),
          const Spacer(),
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
                      color: CustomColor.whitePrimary),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
