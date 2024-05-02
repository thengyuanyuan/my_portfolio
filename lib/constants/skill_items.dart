import 'package:flutter/material.dart';
import 'package:flutter_devicon/flutter_devicon.dart';

import '../models/skill_model.dart';

List<SkillModel> platformItemList = [
  SkillModel(title: "Android Dev", icon: Icons.android_rounded),
  // SkillModel(title: "IOS Dev", icon: Icons.apple_rounded),
  SkillModel(title: "Web Dev", icon: Icons.web),
  SkillModel(title: "Desktop Dev", icon: Icons.desktop_windows_rounded),
];

List<SkillModel> proLangItemList = [
  SkillModel(title: "Flutter", icon: FlutterDEVICON.flutter_plain),
  SkillModel(title: "Python", icon: FlutterDEVICON.python_plain),
  SkillModel(title: "PHP", icon: FlutterDEVICON.php_plain),
  SkillModel(title: "C++", icon: FlutterDEVICON.cplusplus_plain),
  SkillModel(title: "Java", icon: FlutterDEVICON.java_plain),
  SkillModel(title: "HTML5", icon: FlutterDEVICON.html5_plain),
  SkillModel(title: "CSS3", icon: FlutterDEVICON.css3_plain),
  SkillModel(title: "JS", icon: FlutterDEVICON.javascript_plain),
  SkillModel(title: "SQL", icon: Icons.storage_rounded),
  SkillModel(title: "MySQL", icon: FlutterDEVICON.mysql_plain),
];
