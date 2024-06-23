import 'package:emanoelviana/src/utils/providers/theme_provider.dart';
import 'package:emanoelviana/src/utils/routers/router.dart';
import 'package:emanoelviana/src/utils/statics/data_values.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppWidget extends ConsumerWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(ThemeProvider.provider);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      themeMode: themeMode,
      title: DataValues.name,
      theme: FlexThemeData.light(scheme: FlexScheme.wasabi),
      darkTheme: FlexThemeData.dark(scheme: FlexScheme.wasabi),
    );
  }
}
