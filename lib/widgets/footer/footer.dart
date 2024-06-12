import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.maxFinite,
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: const Text(
        "Made by Theng Yuan Yuan with Flutter (Last Edited: 12 June 2024)",
        style: TextStyle(
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }
}
