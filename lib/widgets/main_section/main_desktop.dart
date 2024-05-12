import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/assets.dart';
import 'package:my_portfolio/widgets/animated_role_text.dart';

import '../../styles/styles.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({
    super.key,
    this.onButtonTap,
    required this.roles,
  });

  final VoidCallback? onButtonTap;
  final List<String> roles;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      height: MediaQuery.sizeOf(context).height * 0.8,
      constraints: const BoxConstraints(minHeight: 300.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
          CircleAvatar(
            foregroundImage: const AssetImage(profilePath),
            radius: MediaQuery.sizeOf(context).width * 0.15,
          ),
        ],
      ),
    );
  }
}
