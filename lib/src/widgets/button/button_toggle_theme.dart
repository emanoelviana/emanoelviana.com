import 'package:emanoelviana/src/utils/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remixicon/remixicon.dart';

class ButtonToggleTheme extends ConsumerWidget {
  const ButtonToggleTheme({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(ThemeProvider.provider);
    final themeProvider = ref.watch(ThemeProvider.provider.notifier);

    return IconButton(
      onPressed: () {
        themeProvider.toggleTheme();
      },
      icon: Icon(
        themeMode == ThemeMode.dark ? Remix.moon_line : Remix.sun_line,
      ),
    );
  }
}
