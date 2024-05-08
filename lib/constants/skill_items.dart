import 'package:flutter/material.dart';
import 'package:flutter_devicon/flutter_devicon.dart';

import '../models/skill_model.dart';

class Skills {
  // Platforms
  static SkillModel android =
      SkillModel(title: "Android Dev", icon: Icons.android_rounded);
  static SkillModel ios =
      SkillModel(title: "IOS Dev", icon: Icons.apple_rounded);
  static SkillModel web = SkillModel(title: "Web Dev", icon: Icons.web);
  static SkillModel desktop =
      SkillModel(title: "Desktop Dev", icon: Icons.desktop_windows_rounded);

  // Programming Language
  static SkillModel flutter =
      SkillModel(title: "Flutter", icon: FlutterDEVICON.flutter_plain);
  static SkillModel python =
      SkillModel(title: "Python", icon: FlutterDEVICON.python_plain);
  static SkillModel php =
      SkillModel(title: "PHP", icon: FlutterDEVICON.php_plain);
  static SkillModel cpp =
      SkillModel(title: "C++", icon: FlutterDEVICON.cplusplus_plain);
  static SkillModel java =
      SkillModel(title: "Java", icon: FlutterDEVICON.java_plain);
  static SkillModel html =
      SkillModel(title: "HTML5", icon: FlutterDEVICON.html5_plain);
  static SkillModel css =
      SkillModel(title: "CSS3", icon: FlutterDEVICON.css3_plain);
  static SkillModel js =
      SkillModel(title: "JS", icon: FlutterDEVICON.javascript_plain);
  static SkillModel sql = SkillModel(title: "SQL", icon: Icons.storage_rounded);
  static SkillModel mysql =
      SkillModel(title: "MySQL", icon: FlutterDEVICON.mysql_plain);
}

List<SkillModel> platformItemList = [
  Skills.android,
  // Skills.ios,
  Skills.web,
  Skills.desktop,
];

List<SkillModel> proLangItemList = [
  Skills.flutter,
  Skills.python,
  Skills.php,
  Skills.cpp,
  Skills.java,
  Skills.html,
  Skills.css,
  Skills.js,
  Skills.sql,
  Skills.mysql,
];
