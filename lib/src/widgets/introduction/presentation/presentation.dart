import 'package:emanoelviana/src/utils/providers/responsive_screen_provider.dart';
import 'package:emanoelviana/src/widgets/introduction/presentation/headline/dsk_headline.dart';
import 'package:emanoelviana/src/widgets/introduction/presentation/headline/mbl_headline.dart';
import 'package:emanoelviana/src/widgets/introduction/presentation/headline/sml_headline.dart';
import 'package:emanoelviana/src/widgets/introduction/presentation/professional_statement/dsk_professional_statement.dart';
import 'package:emanoelviana/src/widgets/introduction/presentation/professional_statement/mbl_professional_statement.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Presentation extends StatelessWidget {
  const Presentation({super.key});

  @override
  Widget build(BuildContext context) {
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
          ResponsiveScreenProvider.isDesktopDevice(context)
              ? const DskHeadline()
              : ResponsiveScreenProvider.isTabletDevice(context)
                  ? const MblHeadline()
                  : const SmlHeadline(),
          Gap(ResponsiveScreenProvider.isDesktopDevice(context) ? 48 : 32),
          ResponsiveScreenProvider.isDesktopDevice(context)
              ? const DskProfessionalStatement()
              : const MblProfessionalStatement(),
        ],
      ),
    );
  }
}
