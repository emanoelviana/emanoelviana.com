import 'package:flutter/material.dart';
import 'package:emanoelviana/src/providers/responsive_screen_provider.dart';
import 'package:emanoelviana/src/widgets/desktop/app_bar/dsk_app_bar.dart';
import 'package:emanoelviana/src/widgets/mobile/mbl_drawer.dart';
import 'package:emanoelviana/src/widgets/mobile/mbl_navigation_bar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: ResponsiveScreenProvider.isMobile(context) ||
                ResponsiveScreenProvider.isTabletDevice(context)
            ? const MblNavigationBar()
            : const DskAppBar(),
        drawer: ResponsiveScreenProvider.isMobile(context) ||
                ResponsiveScreenProvider.isTabletDevice(context)
            ? const MblDrawer()
            : null,
        body: const Center());
  }
}
