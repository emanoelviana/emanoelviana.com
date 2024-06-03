import 'package:emanoelviana/src/core/theme/colors/color_tones.dart';
import 'package:flutter/material.dart';

class AppColorScheme {
  AppColorScheme._();

  static ColorScheme dark = ColorScheme(
    brightness: Brightness.light,

    /// Primary
    primary: Color(ColorTones.primary.tone80),
    onPrimary: Color(ColorTones.primary.tone20),
    inversePrimary: Color(ColorTones.primary.tone40),

    /// Secondary
    secondary: Color(ColorTones.secondary.tone80),
    onSecondary: Color(ColorTones.secondary.tone20),

    /// Error
    error: Color(ColorTones.error.tone80),
    onError: Color(ColorTones.error.tone20),

    /// Surface
    surface: Color(ColorTones.neutral.tone10),
    onSurface: Color(ColorTones.neutral.tone100),
    onSurfaceVariant: Color(ColorTones.neutral.tone80),
    inverseSurface: Color(ColorTones.neutral.tone90),
    onInverseSurface: Color(ColorTones.neutral.tone10),
    surfaceContainerLowest: Color(ColorTones.neutral.tone20),
    surfaceContainerLow: Color(ColorTones.neutral.tone40),

    /// Outline
    outline: Color(ColorTones.neutral.tone50),
    outlineVariant: Color(ColorTones.neutral.tone30),

    /// Scrim and Shadow
    scrim: Color(ColorTones.neutral.tone0),
    shadow: Color(ColorTones.neutral.tone0),
  );
}
