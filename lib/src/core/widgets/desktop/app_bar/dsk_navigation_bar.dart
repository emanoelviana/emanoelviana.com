import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';
import 'package:emanoelviana/src/core/extensions/theme_extension.dart';
import 'package:emanoelviana/src/core/utils/responsive_screen_provider.dart';
import 'dart:js' as js;

class DskNavigationBar extends StatelessWidget implements PreferredSizeWidget {
  const DskNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 80,
      titleSpacing: ResponsiveScreenProvider.isDesktopDevice(context) ? 48 : 16,
      title: Stack(alignment: Alignment.center, children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text('Emanoel Viana', style: context.text.titleMedium),
          Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              direction: Axis.horizontal,
              spacing: 16,
              children: [
                IconButton(
                    onPressed: () async {
                      js.context.callMethod(
                          'open', ['https://github.com/emanoelvianads']);
                    },
                    icon: const Icon(Remix.github_fill)),
                IconButton(
                    onPressed: () async {
                      js.context.callMethod(
                          'open', ['https://medium.com/@emanoelviana']);
                    },
                    icon: const Icon(Remix.medium_fill)),
              ]),
        ]),
        Wrap(
            direction: Axis.horizontal,
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 4,
            children: [
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                    textStyle: context.text.bodyLarge,
                    foregroundColor: context.color.onSurface,
                    padding: const EdgeInsets.all(16)),
                child: const Text('Projects'),
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                    textStyle: context.text.bodyLarge,
                    foregroundColor: context.color.onSurface,
                    padding: const EdgeInsets.all(16)),
                child: const Text('About'),
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                    textStyle: context.text.bodyLarge,
                    foregroundColor: context.color.onSurface,
                    padding: const EdgeInsets.all(16)),
                child: const Text('Blog'),
              ),
            ]),
      ]),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}
