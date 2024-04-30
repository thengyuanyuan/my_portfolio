import 'package:flutter/material.dart';
import 'package:flutter_devicon/flutter_devicon.dart';

List<PlatformItemModel> platformItemList = [
  PlatformItemModel(title: "Android Dev", icon: Icons.android_rounded),
  // PlatformItemModel(title: "IOS Dev", icon: Icons.apple_rounded),
  PlatformItemModel(title: "Web Dev", icon: Icons.web),
  // PlatformItemModel(title: "Desktop Dev", icon: Icons.desktop_windows_rounded),
];

class PlatformItemModel {
  final String title;
  final IconData? icon;

  PlatformItemModel({required this.title, this.icon = Icons.layers_rounded});
}

List<ProLangItemModel> proLangItemList = [
  ProLangItemModel(title: "Flutter", icon: FlutterDEVICON.flutter_plain),
  ProLangItemModel(title: "Python", icon: FlutterDEVICON.python_plain),
  ProLangItemModel(title: "PHP", icon: FlutterDEVICON.php_plain),
  ProLangItemModel(title: "C++", icon: FlutterDEVICON.cplusplus_plain),
  ProLangItemModel(title: "Java", icon: FlutterDEVICON.java_plain),
  ProLangItemModel(title: "HTML5", icon: FlutterDEVICON.html5_plain),
  ProLangItemModel(title: "CSS3", icon: FlutterDEVICON.css3_plain),
  ProLangItemModel(title: "JS", icon: FlutterDEVICON.javascript_plain),
  ProLangItemModel(title: "SQL", icon: FlutterDEVICON.sequelize_plain)
];

class ProLangItemModel {
  final String title;
  final IconData? icon;

  ProLangItemModel({required this.title, this.icon = Icons.code});
}
