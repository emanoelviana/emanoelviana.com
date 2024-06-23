import 'package:emanoelviana/src/utils/extensions/theme_extension.dart';
import 'package:emanoelviana/src/utils/statics/data_values.dart';
import 'package:flutter/material.dart';
import 'package:typewrite_text/typewrite_text.dart';

class SmlHeadline extends StatelessWidget {
  const SmlHeadline({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          textAlign: TextAlign.center,
          'I specialized in designing',
          style: context.mblTitle,
        ),
        TypewriteText(
          needCursor: false,
          beforeAnimationDuration: const Duration(milliseconds: 350),
          cursorColor: context.color.onSurface,
          forwardAnimationDuration: const Duration(milliseconds: 200),
          linesOfText: DataValues.valuePropositions,
          textStyle: context.mblTitle.copyWith(
            color: context.color.primary,
          ),
        ),
        Text(
          textAlign: TextAlign.center,
          'that connect companies to their audiences',
          style: context.mblTitle,
        ),
      ],
    );
  }
}
