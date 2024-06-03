import 'package:flutter/material.dart';

extension ThemeExtension on BuildContext {
  /// Text Theme
  TextTheme get text => Theme.of(this).textTheme;

  /// Color Scheme
  ColorScheme get color => Theme.of(this).colorScheme;

  /// Media Query
  double get deviceHeight => MediaQuery.of(this).size.height;
  double get deviceWidth => MediaQuery.of(this).size.width;
  double get pixelRatio => MediaQuery.of(this).devicePixelRatio;
  double get statusBar => MediaQuery.of(this).padding.top;
  double get appBarHeight => kToolbarHeight;
}
