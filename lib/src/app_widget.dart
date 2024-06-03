import 'package:device_preview/device_preview.dart';
import 'package:emanoelviana/src/core/theme/app_theme.dart';
import 'package:emanoelviana/src/pages/home/home_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Emanoel Viana',
      themeMode: ThemeMode.dark,
      theme: EmVianaTheme.dark,
      routes: {
        '/home_page': (context) => const HomePage(),
      },
      initialRoute: '/home_page',
      debugShowCheckedModeBanner: false,
      builder: DevicePreview.appBuilder,
      locale: DevicePreview.locale(context),
    );
  }
}
