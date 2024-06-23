import 'package:flutter/material.dart';

extension ThemeExtension on BuildContext {
  /// Text Theme
  TextTheme get text => Theme.of(this).textTheme;

  TextStyle get dskTitle => const TextStyle(
        fontFamily: 'Roobert',
        fontSize: 64,
        height: 72 / 64,
        letterSpacing: -.2,
        fontWeight: FontWeight.w700,
      );

  TextStyle get mblTitle => const TextStyle(
        fontFamily: 'Roobert',
        fontSize: 36,
        height: 40 / 36,
        letterSpacing: -.04,
        fontWeight: FontWeight.w700,
      );

  TextStyle get dskSubtitle => const TextStyle(
        fontFamily: 'Roobert',
        fontSize: 20,
        letterSpacing: .2,
        height: 28 / 20,
        fontWeight: FontWeight.w400,
      );

  TextStyle get mblSubtitle => const TextStyle(
        fontFamily: 'Roobert',
        fontSize: 18,
        height: 26 / 18,
        fontWeight: FontWeight.w400,
      );

  TextStyle get dskTextLowEmphasys => const TextStyle(
        fontFamily: 'Roobert',
        letterSpacing: .2,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      );

  TextStyle get mblTextLowEmphasys => const TextStyle(
        fontFamily: 'Roobert',
        letterSpacing: .2,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      );

  /// Color Scheme
  ColorScheme get color => Theme.of(this).colorScheme;

  /// Media Query
  double get deviceHeight => MediaQuery.of(this).size.height;
  double get deviceWidth => MediaQuery.of(this).size.width;
  double get pixelRatio => MediaQuery.of(this).devicePixelRatio;
  double get statusBar => MediaQuery.of(this).padding.top;
  double get appBarHeight => kToolbarHeight;

  Color get blue => const Color(0XFF005FDF);
  Color get deepBlue => const Color(0XFF0D1B42);
}
