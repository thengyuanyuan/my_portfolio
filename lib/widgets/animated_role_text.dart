import 'package:flutter/material.dart';

import '../styles/styles.dart';

class AnimatedRoleText extends StatelessWidget {
  final List<String> textList;

  const AnimatedRoleText({
    super.key,
    required this.textList,
  });

  // TODO: Animated Text for Roles

  @override
  Widget build(BuildContext context) {
    return Text(
      "Hi,\nI'm THENG YUAN YUAN.\n${textList.first}.",
      style: kIntroductionTextStyle,
    );
  }
}
