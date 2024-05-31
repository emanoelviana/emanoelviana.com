import 'package:flutter/material.dart';

extension ThemeExtension on BuildContext {
  /// Text Theme
  TextTheme get text => Theme.of(this).textTheme;

  /// Color Scheme
  ColorScheme get color => Theme.of(this).colorScheme;
}
