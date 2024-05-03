import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/assets.dart';
import 'package:my_portfolio/constants/colors.dart';

import '../../styles/styles.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({
    super.key,
  });

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
          ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(colors: [
                Colors.black.withOpacity(0.5),
                Colors.black.withOpacity(0.1),
              ]).createShader(bounds);
            },
            blendMode: BlendMode.srcATop,
            child: CircleAvatar(
              foregroundImage: const AssetImage(profilePath),
              radius: MediaQuery.sizeOf(context).width * 0.25,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Hi,\nI'm THENG YUAN YUAN.\nA Fresh Graduate.",
            // TODO: Animated text to change the role
            style: TextStyle(
              fontSize: 25.0,
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
    );
  }
}
