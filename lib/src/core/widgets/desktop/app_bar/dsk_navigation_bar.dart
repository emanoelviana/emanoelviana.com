import 'package:flutter/material.dart';

import 'package:remixicon/remixicon.dart';

import 'package:emanoelviana/src/core/extensions/theme_extension.dart';
import 'package:emanoelviana/src/core/utils/responsive_screen_provider.dart';

class DskNavigationBar extends StatelessWidget implements PreferredSizeWidget {
  const DskNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 80,
      titleSpacing: ResponsiveScreenProvider.isDesktopDevice(context) ? 48 : 16,
      title: Expanded(
        child: LayoutBuilder(builder: (context, constraints) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Emanoel Viana', style: context.text.titleMedium),
                Wrap(
                    direction: Axis.horizontal,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    spacing: 16,
                    children: [
                      TextButton(
                          onPressed: () {}, child: const Text('Projects')),
                      TextButton(onPressed: () {}, child: const Text('About')),
                      TextButton(onPressed: () {}, child: const Text('Blog')),
                    ]),
                Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    direction: Axis.horizontal,
                    spacing: 16,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Remix.github_fill)),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Remix.medium_fill)),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Remix.behance_fill)),
                    ]),
              ]);
        }),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}
