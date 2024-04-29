import 'package:flutter/material.dart';

import '../../styles/styles.dart';
import 'site_logo.dart';

class HeaderMobile extends StatelessWidget {
  final VoidCallback? onLogoTap;
  final VoidCallback? onMenuTap;
  const HeaderMobile({
    super.key,
    this.onLogoTap,
    this.onMenuTap,
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
          SiteLogo(
            onTap: onLogoTap,
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(Icons.menu_rounded),
            onPressed: onMenuTap,
          ),
          const SizedBox(
            width: 15,
          )
        ],
      ),
    );
  }
}
