import 'package:flutter/material.dart';

import '../constants/colors.dart';

BoxDecoration kHeaderDecoration = BoxDecoration(
  gradient: const LinearGradient(
    colors: [
      Colors.transparent,
      CustomColor.bgLight1,
    ],
  ),
  borderRadius: BorderRadius.circular(100),
);

TextStyle kSectionTitleTextStyle = const TextStyle(
  fontSize: 26,
  fontWeight: FontWeight.bold,
  color: CustomColor.whitePrimary,
);

ButtonStyle kButtonStyle = ElevatedButton.styleFrom(
  backgroundColor: CustomColor.buttonBackgroundColor,
  foregroundColor: CustomColor.buttonForegroundColor,
  padding: const EdgeInsets.symmetric(
    vertical: 20,
    horizontal: 50,
  ),
);
