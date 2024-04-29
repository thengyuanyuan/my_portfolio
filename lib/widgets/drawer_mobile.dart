import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/nav_items.dart';

class DrawerMobile extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const DrawerMobile({
    super.key,
    required this.scaffoldKey,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: CustomColor.scaffoldBg,
      child: ListView(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: IconButton(
                onPressed: () {
                  scaffoldKey.currentState?.closeEndDrawer();
                },
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
                color: CustomColor.whitePrimary,
                fontWeight: FontWeight.w600,
                fontSize: 16.0,
              ),
              onTap: () {},
              leading: Icon(navItemList[i].icon),
              title: Text(navItemList[i].title),
            ),
        ],
      ),
    );
  }
}
