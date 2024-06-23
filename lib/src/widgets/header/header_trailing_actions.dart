import 'package:emanoelviana/src/utils/providers/responsive_screen_provider.dart';
import 'package:emanoelviana/src/widgets/button/button_open_for_freelance.dart';
import 'package:emanoelviana/src/widgets/button/button_toggle_theme.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HeaderTrailingActions extends StatelessWidget {
  const HeaderTrailingActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const ButtonOpenForFreelance(),
        Gap(ResponsiveScreenProvider.isDesktopDevice(context) ? 24 : 16),
        const ButtonToggleTheme(),
      ],
    );
  }
}
