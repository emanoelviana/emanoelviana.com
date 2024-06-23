import 'package:emanoelviana/src/utils/providers/responsive_screen_provider.dart';
import 'package:emanoelviana/src/utils/statics/data_values.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:emanoelviana/src/utils/extensions/theme_extension.dart';
import 'package:emanoelviana/src/widgets/button/button_menu.dart';

class HeaderLeadingActions extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const HeaderLeadingActions({
    super.key,
    required this.scaffoldKey,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ButtonMenu(scaffoldKey: scaffoldKey),
        Gap(ResponsiveScreenProvider.isDesktopDevice(context) ? 24 : 16),
        Text(
          DataValues.name,
          style: context.textLowEmphasys,
        )
      ],
    );
  }
}
