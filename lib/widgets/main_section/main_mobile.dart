import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/assets.dart';

import '../../styles/styles.dart';
import '../animated_role_text.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({
    super.key,
    this.onButtonTap,
    required this.roles,
  });

  final List<String> roles;

  final VoidCallback? onButtonTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      height: MediaQuery.sizeOf(context).height * 0.9,
      constraints: const BoxConstraints(minHeight: 500.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            foregroundImage: const AssetImage(profilePath),
            radius: MediaQuery.sizeOf(context).width * 0.25,
          ),
          const SizedBox(
            height: 30,
          ),
          AnimatedRoleText(
            textList: roles,
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: onButtonTap,
            style: kButtonStyle,
            child: const Text('View CV'),
          ),
        ],
      ),
    );
  }
}
