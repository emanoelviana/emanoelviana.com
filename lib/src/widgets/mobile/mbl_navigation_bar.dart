import 'package:flutter/material.dart';

import 'package:emanoelviana/src/extensions/theme_extension.dart';

class MblNavigationBar extends StatelessWidget implements PreferredSizeWidget {
  const MblNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 56,
      title: Text('Emanoel Viana', style: context.text.titleMedium),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
