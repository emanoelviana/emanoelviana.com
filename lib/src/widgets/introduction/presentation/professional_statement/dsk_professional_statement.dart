import 'package:emanoelviana/src/utils/extensions/theme_extension.dart';
import 'package:emanoelviana/src/utils/providers/theme_provider.dart';
import 'package:emanoelviana/src/utils/statics/data_values.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class DskProfessionalStatement extends ConsumerWidget {
  const DskProfessionalStatement({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(ThemeProvider.provider);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: Text(
            textAlign: TextAlign.center,
            DataValues.professionalState,
            style: context.dskSubtitle,
          ),
        ),
        const Gap(16),
        SvgPicture.asset(
          themeMode == ThemeMode.dark
              ? DataValues.logoUOLDark
              : DataValues.logoUOLLight,
        ),
      ],
    );
  }
}
