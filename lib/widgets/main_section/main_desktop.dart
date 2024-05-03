import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/assets.dart';
import 'package:my_portfolio/constants/colors.dart';

import '../../styles/styles.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({
    super.key,
  });

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
              const Text(
                "Hi,\nI'm THENG YUAN YUAN.\nA Fresh Graduate.",
                style: TextStyle(
                  fontSize: 30.0,
                  height: 1.5,
                  fontWeight: FontWeight.w600,
                  color: CustomColor.whitePrimary,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                style: kButtonStyle,
                child: const Text('Get in touch'),
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
