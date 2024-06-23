import 'package:emanoelviana/src/utils/extensions/theme_extension.dart';
import 'package:emanoelviana/src/utils/statics/data_values.dart';
import 'package:flutter/material.dart';
import 'package:typewrite_text/typewrite_text.dart';

class DskHeadline extends StatelessWidget {

  const DskHeadline({ super.key });

   @override
   Widget build(BuildContext context) {
       return ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 720),
            child: Wrap(
              alignment: WrapAlignment.center,
              direction: Axis.horizontal,
              children: [
                Text(
                  textAlign: TextAlign.center,
                  'I specialized in',
                  style: context.dskTitle,
                ),
                Wrap(
                  direction: Axis.horizontal,
                  children: [
                    Text(
                      'designing ',
                      style: context.dskTitle,
                    ),
                    TypewriteText(
                      needCursor: false,
                      beforeAnimationDuration:
                          const Duration(milliseconds: 350),
                      cursorColor: context.color.onSurface,
                      forwardAnimationDuration:
                          const Duration(milliseconds: 200),
                      linesOfText: DataValues.valuePropositions,
                      textStyle: context.dskTitle.copyWith(
                        color: context.color.primary,
                      ),
                    ),
                  ],
                ),
                Text(
                  textAlign: TextAlign.center,
                  'that connect companies to their audiences',
                  style: context.dskTitle,
                ),
              ],
            ),
          );
  }
}