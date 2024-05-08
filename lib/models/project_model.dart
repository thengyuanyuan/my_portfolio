import 'skill_model.dart';

class ProjectModel {
  final String title;
  final String description;
  final List<ProjectImageModel> images;
  final DateTime date;
  final String? githubLink;
  final String? androidLink;
  final String? iosLink;
  final String? webLink;
  final String? documentLink;
  final List<SkillModel> skillTags;
  final String type;

  ProjectModel({
    required this.title,
    required this.description,
    required this.images,
    required this.skillTags,
    required this.type,
    required this.date,
    this.githubLink,
    this.androidLink,
    this.iosLink,
    this.webLink,
    this.documentLink,
  });
}

class ProjectImageModel {
  final String imagePath;
  final String imageSubtitle;

  ProjectImageModel({
    required this.imagePath,
    required this.imageSubtitle,
  });
}
