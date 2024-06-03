import 'package:flutter/material.dart';

import 'package:emanoelviana/src/core/theme/colors/color_tones.dart';

class AppTextTheme {
  AppTextTheme._();

  static TextTheme dark = TextTheme(
    /// Display

    displayLarge: TextStyle(
      fontFamily: 'Roobert',
      fontSize: 72,
      height: 88 / 72,
      fontWeight: FontWeight.w300,
      letterSpacing: -.4,
      color: Color(ColorTones.neutral.tone100),
    ),

    displayMedium: TextStyle(
      fontFamily: 'Roobert',
      fontSize: 44,
      height: 52 / 44,
      fontWeight: FontWeight.w800,
      color: Color(ColorTones.neutral.tone100),
    ),

    displaySmall: TextStyle(
      fontFamily: 'Roobert',
      fontSize: 36,
      height: 44 / 36,
      fontWeight: FontWeight.w800,
      color: Color(ColorTones.neutral.tone100),
    ),

    /// Headline

    headlineLarge: TextStyle(
      fontFamily: 'Roobert',
      fontSize: 32,
      height: 40 / 32,
      fontWeight: FontWeight.w800,
      color: Color(ColorTones.neutral.tone100),
    ),

    headlineMedium: TextStyle(
      fontFamily: 'Roobert',
      fontSize: 28,
      height: 36 / 28,
      fontWeight: FontWeight.w800,
      color: Color(ColorTones.neutral.tone100),
    ),

    headlineSmall: TextStyle(
      fontFamily: 'Roobert',
      fontSize: 24,
      height: 32 / 24,
      fontWeight: FontWeight.w800,
      color: Color(ColorTones.neutral.tone100),
    ),

    /// Title

    titleLarge: TextStyle(
      fontFamily: 'Roobert',
      fontSize: 20,
      height: 32 / 20,
      letterSpacing: .2,
      fontWeight: FontWeight.w500,
      color: Color(ColorTones.neutral.tone100),
    ),

    titleMedium: TextStyle(
      fontFamily: 'Roobert',
      fontSize: 16,
      height: 24 / 16,
      letterSpacing: .4,
      fontWeight: FontWeight.w500,
      color: Color(ColorTones.neutral.tone100),
    ),

    titleSmall: TextStyle(
      fontFamily: 'Roobert',
      fontSize: 14,
      height: 20 / 14,
      fontWeight: FontWeight.w500,
      color: Color(ColorTones.neutral.tone100),
    ),

    /// Body

    bodyLarge: TextStyle(
      fontFamily: 'Roobert',
      fontSize: 18,
      height: 32 / 18,
      fontWeight: FontWeight.w400,
      color: Color(ColorTones.neutral.tone80),
    ),

    bodyMedium: TextStyle(
      fontFamily: 'Roobert',
      fontSize: 16,
      height: 24 / 16,
      fontWeight: FontWeight.w400,
      color: Color(ColorTones.neutral.tone80),
    ),

    bodySmall: TextStyle(
      fontFamily: 'Roobert',
      fontSize: 14,
      height: 20 / 14,
      fontWeight: FontWeight.w400,
      color: Color(ColorTones.neutral.tone80),
    ),

    /// Label

    labelLarge: TextStyle(
      fontFamily: 'Roobert',
      fontSize: 16,
      height: 24 / 16,
      fontWeight: FontWeight.w500,
      letterSpacing: .4,
      color: Color(ColorTones.neutral.tone100),
    ),

    labelMedium: TextStyle(
      fontFamily: 'Roobert',
      fontSize: 14,
      height: 20 / 14,
      fontWeight: FontWeight.w500,
      letterSpacing: .4,
      color: Color(ColorTones.neutral.tone100),
    ),

    labelSmall: TextStyle(
      fontFamily: 'Roobert',
      fontSize: 12,
      height: 16 / 12,
      fontWeight: FontWeight.w500,
      letterSpacing: .4,
      color: Color(ColorTones.neutral.tone100),
    ),
  );
}
