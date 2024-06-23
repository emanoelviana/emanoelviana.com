import 'package:emanoelviana/src/utils/statics/data_values.dart';
import 'package:flutter/material.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

class SideBar extends StatelessWidget {
  const SideBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            // Github
            ListTile(
              onTap: () {
                js.context.callMethod('open', [DataValues.socialGithubLink]);
              },
              leading: DataValues.socialGithubIcon,
              title: const Text(DataValues.socialGithubLabel),
            ),

            // Medium
            ListTile(
              onTap: () {
                js.context.callMethod('open', [DataValues.socialMediumLink]);
              },
              leading: DataValues.socialMediumIcon,
              title: const Text(DataValues.socialMediumLabel),
            ),

            // Behance
            ListTile(
              onTap: () {
                js.context.callMethod('open', [DataValues.socialBehanceLink]);
              },
              leading: DataValues.socialBehanceIcon,
              title: const Text(DataValues.socialBehanceLabel),
            ),
          ],
        ),
      ),
    );
  }
}
