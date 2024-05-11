import 'package:flutter/material.dart';

class CustomColor {
  static const Color primaryColor = Colors.amber;
}

class CustomTheme {
  static final theme = ThemeData(
    useMaterial3: true,
    colorSchemeSeed: CustomColor.primaryColor,
    appBarTheme: AppBarTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    ),
    listTileTheme: ListTileThemeData(
      titleTextStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
      subtitleTextStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    iconTheme: const IconThemeData(color: Colors.grey),
  );

  static final lightTheme = theme.copyWith(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    textTheme: Typography.blackCupertino,
    cardColor: const Color.fromARGB(255, 255, 250, 240),
  );

  static final darkTheme = theme.copyWith(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    textTheme: Typography.whiteCupertino,
    cardColor: const Color.fromARGB(255, 39, 37, 27),
  );
}
