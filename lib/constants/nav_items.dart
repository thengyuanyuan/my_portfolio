import 'package:flutter/material.dart';

// List<String> navTitles = [
//   "Home",
//   "Skills",
//   "Projects",
//   "Blog",
//   "Contact",
// ];

// List<IconData> navIcons = [
//   Icons.home,
//   Icons.android_outlined,
//   Icons.back_hand,
//   Icons.web,
//   Icons.quick_contacts_mail,
// ];

List<NavItemModel> navItemList = [
  NavItemModel(title: "Home", icon: Icons.home_filled),
  NavItemModel(title: "Skills", icon: Icons.android_rounded),
  NavItemModel(title: "Projects", icon: Icons.back_hand),
  NavItemModel(title: "Blog", icon: Icons.web_rounded),
  NavItemModel(title: "Contact", icon: Icons.quick_contacts_mail_rounded)
];

class NavItemModel {
  final String title;
  final IconData? icon;

  NavItemModel({required this.title, this.icon});
}
