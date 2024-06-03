import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:emanoelviana/src/core/extensions/theme_extension.dart';
import 'package:emanoelviana/src/core/utils/responsive_screen_provider.dart';

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
                      var url = Uri.https('github.com', '/emanoelvianads');
                      if (await canLaunchUrl(url)) {
                        await launchUrl(url);
                      } else {
                        throw Exception('Could not launch $url');
                      }
                    },
                    icon: const Icon(Remix.github_fill)),
                IconButton(
                    onPressed: () async {
                      var url = Uri.https('medium.com', '/@emanoelviana');
                      if (await canLaunchUrl(url)) {
                        await launchUrl(url);
                      } else {
                        throw Exception('Could not launch $url');
                      }
                    },
                    icon: const Icon(Remix.medium_fill)),
                IconButton(
                    onPressed: () {}, icon: const Icon(Remix.behance_fill)),
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
