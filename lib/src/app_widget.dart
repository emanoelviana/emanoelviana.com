import 'package:emanoelviana/src/providers/theme_provider.dart';
import 'package:emanoelviana/src/routers/router.dart';
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
      title: 'Emanoel Viana',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
    );
  }
}
