import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/nav_items.dart';

class DrawerMobile extends StatelessWidget {
  final VoidCallback onCloseTap;
  final Function(int) onNavItemTap;
  const DrawerMobile({
    super.key,
    required this.onCloseTap,
    required this.onNavItemTap,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // backgroundColor: CustomColor.scaffoldBg,
      child: ListView(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: IconButton(
                onPressed: onCloseTap,
                icon: const Icon(Icons.close_rounded),
              ),
            ),
          ),
          for (int i = 0; i < navItemList.length; i++)
            ListTile(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 5,
              ),
              titleTextStyle: const TextStyle(
                // color: CustomColor.whitePrimary,
                fontWeight: FontWeight.w600,
                fontSize: 16.0,
              ),
              onTap: () {
                onNavItemTap(i);
              },
              leading: Icon(navItemList[i].icon),
              title: Text(navItemList[i].title),
            ),
        ],
      ),
    );
  }
}
