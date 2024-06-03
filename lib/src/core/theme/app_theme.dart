import 'package:flutter/material.dart';

import 'package:emanoelviana/src/core/theme/colors/app_color_scheme.dart';
import 'package:emanoelviana/src/core/theme/text/app_text_theme.dart';

class EmVianaTheme {
  EmVianaTheme._();

  static ThemeData dark = ThemeData(
    useMaterial3: true,
    textTheme: AppTextTheme.dark,
    colorScheme: AppColorScheme.dark,
    
  );
}
