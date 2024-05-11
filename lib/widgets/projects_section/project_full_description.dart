// ignore: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_portfolio/models/project_model.dart';

class ProjectFullDescription extends StatelessWidget {
  const ProjectFullDescription({
    super.key,
    required this.projectModel,
  });

  final ProjectModel projectModel;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      clipBehavior: Clip.antiAlias,
      title: SizedBox(
        child: Text(
          projectModel.title,
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.black),
        ),
      ),
      content: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 600.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                title: const Text('Description:'),
                subtitle: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(projectModel.description),
                ),
              ),
              ListTile(
                title: const Text('Type:'),
                subtitle: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(projectModel.type),
                ),
              ),
              ListTile(
                title: const Text('Skills:'),
                subtitle: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    direction: Axis.horizontal,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: projectModel.skillTags
                        .map(
                          (skill) => Chip(
                            avatar: Icon(skill.icon),
                            label: Text(skill.title),
                          ),
                        )
                        .toList(),
                  ),
                ),
              ),
              ListTile(
                title: const Text('Date:'),
                subtitle: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(DateFormat.yMMMM().format(projectModel.date)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
