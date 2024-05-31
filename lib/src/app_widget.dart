import 'package:emanoelviana/src/core/theme/app_theme.dart';
import 'package:emanoelviana/src/pages/home/home_module.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Emanoel Viana',
      themeMode: ThemeMode.dark,
      theme: EmVianaTheme.dark,
      routes: {...HomeModule().routers},
      initialRoute: '/home_page',
      debugShowCheckedModeBanner: false,
    );
  }
}
