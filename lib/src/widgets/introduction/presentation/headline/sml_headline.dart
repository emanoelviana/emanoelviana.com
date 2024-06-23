import 'package:emanoelviana/src/utils/extensions/theme_extension.dart';
import 'package:emanoelviana/src/utils/statics/data_values.dart';
import 'package:flutter/material.dart';

class SmlHeadline extends StatelessWidget {
  const SmlHeadline({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 580),
      child: Text(
        textAlign: TextAlign.center,
        DataValues.headline,
        style: context.mblTitle,
      ),
    );
  }
}
