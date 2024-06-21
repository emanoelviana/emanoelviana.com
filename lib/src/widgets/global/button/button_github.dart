import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';
import 'dart:js' as js;

class ButtonGithub extends StatelessWidget {
  const ButtonGithub({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        js.context.callMethod('open', ['https://github.com/emanoelviana']);
      },
      icon: const Icon(Remix.github_fill),
    );
  }
}
