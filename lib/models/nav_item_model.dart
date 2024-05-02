import 'package:flutter/material.dart';

class NavItemModel {
  final String title;
  final IconData? icon;

  NavItemModel({required this.title, this.icon = Icons.add_circle_outlined});
}
