import 'package:flutter/material.dart';

import 'package:emanoelviana/src/core/extensions/theme_extension.dart';

class MblNavigationBar extends StatelessWidget implements PreferredSizeWidget {
  const MblNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 64,
      title: Text('Emanoel Viana', style: context.text.titleMedium),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(64);
}
