import 'package:flutter/material.dart';

import 'colors.dart';

ThemeData get theme => ThemeData(
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: kPrimaryColor,
    onPrimary: kOnPrimary,
    secondary: kSecondaryColor,
    onSecondary: kOnSecondaryColor,
    error: kErrorColor,
    onError: kOnErrorColor,
    background: kBackgroundColor,
    onBackground: kOnBackgroundColor,
    surface: kSurfaceColor,
    onSurface: kOnSurfaceColor,
  ),
  textTheme: textTheme,
);

TextTheme get textTheme => const TextTheme(
  displayLarge: TextStyle(
    fontSize: 57,
    fontWeight: FontWeight.w400,
    color: kTextColor,
  ),
  displayMedium: TextStyle(
    fontSize: 45,
    fontWeight: FontWeight.w400,
    color: kTextColor,
  ),
  displaySmall: TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.w400,
    color: kTextColor,
  ),
  headlineLarge: TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w400,
    color: kTextColor,
  ),
  headlineMedium: TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w400,
    color: kTextColor,
  ),
  headlineSmall: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w400,
    color: kTextColor,
  ),
  titleLarge: TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w400,
    color: kTextColor,
  ),
  titleMedium: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: kTextColor,
  ),
  titleSmall: TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: kTextColor,
  ),
  labelLarge: TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: kTextColor,
  ),
  labelMedium: TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: kTextColor,
  ),
  labelSmall: TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w400,
    color: kTextColor,
  ),
  bodyLarge: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: kTextColor,
  ),
  bodyMedium: TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: kTextColor,
  ),
  bodySmall: TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: kTextColor,
  ),
);
