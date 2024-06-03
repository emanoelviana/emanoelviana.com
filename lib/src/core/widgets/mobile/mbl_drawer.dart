import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:remixicon/remixicon.dart';
import 'dart:js' as js;

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
                onTap: () {
                  js.context.callMethod(
                      'opem', ['https://github.com/emanoelvianads']);
                },
                leading: const Icon(Remix.github_fill),
                title: const Text('Github'),
              ),
              ListTile(
                onTap: () {
                  js.context
                      .callMethod('open', ['https://medium.com/@emanoelviana']);
                },
                leading: const Icon(Remix.medium_fill),
                title: const Text('Medium'),
              ),
              ListTile(
                onTap: () {
                  js.context.callMethod(
                      'open', ['https://www.behance.net/emanoelviana']);
                },
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
