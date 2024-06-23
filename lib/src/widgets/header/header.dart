import 'package:emanoelviana/src/utils/extensions/theme_extension.dart';
import 'package:emanoelviana/src/utils/providers/responsive_screen_provider.dart';
import 'package:emanoelviana/src/widgets/header/header_leading_actions.dart';
import 'package:emanoelviana/src/widgets/header/header_trailing_actions.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const Header({super.key, required this.scaffoldKey});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
            bottom: BorderSide(
          color: context.color.outlineVariant,
          width: .32,
        )),
      ),
      width: context.deviceWidth,
      padding: EdgeInsets.symmetric(
          vertical: 16,
          horizontal:
              ResponsiveScreenProvider.isDesktopDevice(context) ? 96 : 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HeaderLeadingActions(scaffoldKey: scaffoldKey),
          const HeaderTrailingActions(),
        ],
      ),
    );
  }
}
