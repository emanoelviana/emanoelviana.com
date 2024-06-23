import 'package:emanoelviana/src/utils/extensions/theme_extension.dart';
import 'package:emanoelviana/src/utils/statics/data_values.dart';
import 'package:flutter/material.dart';
import 'package:typewrite_text/typewrite_text.dart';

class SmlHeadline extends StatelessWidget {
  const SmlHeadline({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 580),
      child: Wrap(
        alignment: WrapAlignment.center,
        direction: Axis.horizontal,
        children: [
          Text(
            textAlign: TextAlign.center,
            'I specialized in designing engaging',
            style: context.mblTitle,
          ),
          TypewriteText(
            linesOfText: DataValues.valuePropositions,
            forwardAnimationDuration: const Duration(milliseconds: 150),
            beforeAnimationDuration: const Duration(milliseconds: 350),
            needCursor: false,
            cursorColor: context.color.onSurface,
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
      ),
    );
  }
}
