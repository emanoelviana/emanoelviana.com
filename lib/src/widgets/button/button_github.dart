import 'package:emanoelviana/src/utils/statics/data_values.dart';
import 'package:flutter/material.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

class ButtonGithub extends StatelessWidget {
  const ButtonGithub({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        js.context.callMethod(
          'open',
          [DataValues.socialGithubLink],
        );
      },
      icon: DataValues.socialGithubIcon,
    );
  }
}
