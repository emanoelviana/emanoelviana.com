import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:remixicon/remixicon.dart';
import 'package:url_launcher/url_launcher.dart';

class MblDrawer extends StatelessWidget {
  const MblDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: LayoutBuilder(builder: (context, constraints) {
        return SingleChildScrollView(
          child: Column(
            children: [
              const Gap(24),
              ListTile(
                onTap: () {},
                title: const Text('Projects'),
              ),
              ListTile(
                onTap: () {},
                title: const Text('About'),
              ),
              ListTile(
                onTap: () {},
                title: const Text('Blog'),
              ),
              const Divider(
                height: 24,
                indent: 16,
                endIndent: 16,
              ),
              ListTile(
                onTap: () async {
                  var url = Uri.https('github.com', '/emanoelvianads');
                  if (await canLaunchUrl(url)) {
                    await launchUrl(url);
                  } else {
                    throw Exception('Could not launch $url');
                  }
                },
                leading: const Icon(Remix.github_fill),
                title: const Text('Github'),
              ),
              ListTile(
                onTap: () async {
                  var url = Uri.https('medium.com', '/@emanoelviana');
                  if (await canLaunchUrl(url)) {
                    await launchUrl(url);
                  }
                },
                leading: const Icon(Remix.medium_fill),
                title: const Text('Medium'),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Remix.behance_fill),
                title: const Text('Behance'),
              ),
            ],
          ),
        );
      }),
    );
  }
}
