import 'package:emanoelviana/src/utils/extensions/theme_extension.dart';
import 'package:emanoelviana/src/utils/providers/responsive_screen_provider.dart';
import 'package:emanoelviana/src/utils/providers/theme_provider.dart';
import 'package:emanoelviana/src/utils/statics/data_values.dart';
import 'package:emanoelviana/src/widgets/introduction/presentation/headline/dsk_headline.dart';
import 'package:emanoelviana/src/widgets/introduction/presentation/headline/mbl_headline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class DskPresentation extends ConsumerWidget {
  const DskPresentation({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(ThemeProvider.provider);

    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 0,
        horizontal: 24,
      ),
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          // Headline
          ResponsiveScreenProvider.isDesktopDevice(context)
              ? const DskHeadline()
              : const MblHeadline(),

          Gap(ResponsiveScreenProvider.isDesktopDevice(context) ? 56 : 24),

          // Professional Statement
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                textAlign: TextAlign.center,
                DataValues.professionalState,
                style: ResponsiveScreenProvider.isDesktopDevice(context)
                    ? context.dskSubtitle
                    : context.mblSubtitle,
              ),
              const Gap(16),
              SvgPicture.asset(
                themeMode == ThemeMode.dark
                    ? DataValues.logoUOLDark
                    : DataValues.logoUOLLight,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
