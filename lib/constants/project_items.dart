import 'package:flutter/material.dart';
import 'package:flutter_devicon/flutter_devicon.dart';
import 'package:my_portfolio/models/skill_model.dart';

import '../models/project_model.dart';

List<ProjectModel> projectItemsList = [
  // 2024
  // TODO: Add flutter projects

  // 2023
  // TODO: Add FYP...

  // 2022
  // TODO: Add Intern
  ProjectModel(
    title: "MYCOVID",
    description: "A simple webpage shows covid status in charts.",
    images: [
      ProjectImageModel(
        imagePath: "assets/images/projects/mycovid_home.png",
        imageSubtitle: "Home Page Show Overall Status in Malaysia",
      ),
      ProjectImageModel(
        imagePath: "assets/images/projects/mycovid_new.png",
        imageSubtitle: "New Cases in Malaysia",
      ),
      ProjectImageModel(
        imagePath: "assets/images/projects/mycovid_adminlogin.png",
        imageSubtitle: "Admin Login",
      ),
      ProjectImageModel(
        imagePath: "assets/images/projects/mycovid_addrecord.png",
        imageSubtitle: "Admin Add Record",
      ),
      ProjectImageModel(
        imagePath: "assets/images/projects/mycovid_dataupdated.png",
        imageSubtitle: "Data Updated Successful",
      ),
    ],
    skillTags: [
      SkillModel(title: "HTML", icon: FlutterDEVICON.html5_plain),
      SkillModel(title: "CSS", icon: FlutterDEVICON.css3_plain),
      SkillModel(title: "JS", icon: FlutterDEVICON.javascript_plain),
      SkillModel(title: "PHP", icon: FlutterDEVICON.php_plain),
      SkillModel(title: "SQL", icon: Icons.storage_rounded),
    ],
    type: "University Project",
    documentLink:
        "https://drive.google.com/file/d/18asp1_A2I7QgCiICSy3Z1HNP-tfy7BTU/view?usp=sharing",
    date: DateTime(2022, DateTime.march),
  ),

  // 2021
  ProjectModel(
    title: "Employee Payroll System",
    description:
        "An Employee Payroll System with GUI, created using Java. Two types of users: Admin and Employee. ",
    images: [
      ProjectImageModel(
        imagePath: "assets/images/projects/employee_payroll.png",
        imageSubtitle: "Login Page",
      ),
      ProjectImageModel(
        imagePath: "assets/images/projects/employee_payroll2.png",
        imageSubtitle: "Employee View Page",
      ),
    ],
    githubLink: "https://github.com/thengyuanyuan/employee-payroll-system",
    skillTags: [
      SkillModel(title: "Java", icon: FlutterDEVICON.java_plain),
      SkillModel(title: "SQL", icon: Icons.storage_rounded),
    ],
    type: "University Project",
    date: DateTime(2021, DateTime.november),
  ),
  ProjectModel(
    title: "Calculator",
    description: "A simple calculator with GUI, created using Java",
    images: [
      ProjectImageModel(
        imagePath: "assets/images/projects/calculator.png",
        imageSubtitle: "The Calculator",
      ),
    ],
    githubLink: "https://github.com/thengyuanyuan/calculator",
    skillTags: [
      SkillModel(title: "Java", icon: FlutterDEVICON.java_plain),
    ],
    type: "Hobby Project",
    date: DateTime(2021, DateTime.october),
  ),
];
