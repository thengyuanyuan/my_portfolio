import 'package:flutter/material.dart';
import '../../../constants/colors.dart';

class SiteLogo extends StatelessWidget {
  final VoidCallback? onTap;
  const SiteLogo({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: const Text(
        "THENG",
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.none,
          color: CustomColor.yellowSecondary,
        ),
      ),
    );
  }
}
