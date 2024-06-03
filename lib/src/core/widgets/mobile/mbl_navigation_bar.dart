import 'package:emanoelviana/src/core/extensions/theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:remixicon/remixicon.dart';

class MblNavigationBar extends StatelessWidget implements PreferredSizeWidget {
  const MblNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 64,
      title: Text('Emanoel Viana', style: context.text.titleLarge),
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Remix.github_fill)),
        const Gap(8),
        IconButton(onPressed: () {}, icon: const Icon(Remix.medium_fill)),
        const Gap(16),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(64);
}
