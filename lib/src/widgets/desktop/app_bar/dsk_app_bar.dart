import 'package:emanoelviana/src/widgets/global/button/button_github.dart';
import 'package:emanoelviana/src/widgets/global/button/button_toggle_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:emanoelviana/src/extensions/theme_extension.dart';

class DskAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const DskAppBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar(
      toolbarHeight: 72,
      titleSpacing: 24,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Emanoel Viana',
            style: context.text.titleMedium,
          ),
          const Row(
            children: [
              ButtonGithub(),
              Gap(8),
              ButtonToggleTheme(),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}
