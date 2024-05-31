import 'package:emanoelviana/src/core/theme/colors/em_viana_color_scheme.dart';
import 'package:emanoelviana/src/core/theme/text/em_viana_text_theme.dart';
import 'package:flutter/material.dart';

class EmVianaTheme {
  EmVianaTheme._();

  static ThemeData dark = ThemeData(
    useMaterial3: true,
    textTheme: EmVianaTextTheme.dark,
    colorScheme: EmVianaColorScheme.dark,
  );
}
