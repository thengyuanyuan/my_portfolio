import 'package:flutter/material.dart';

class SiteLogo extends StatelessWidget {
  final VoidCallback? onTap;
  const SiteLogo({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 80,
        child: Image.asset(
          "assets/images/logo.png",
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
