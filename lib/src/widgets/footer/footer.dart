import 'package:emanoelviana/src/utils/extensions/theme_extension.dart';
import 'package:emanoelviana/src/utils/providers/responsive_screen_provider.dart';
import 'package:emanoelviana/src/utils/statics/data_values.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: context.color.outlineVariant,
              width: .32,
            ),
          ),
        ),
        padding: ResponsiveScreenProvider.isDesktopDevice(context)
            ? const EdgeInsets.symmetric(vertical: 24, horizontal: 48)
            : const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              DataValues.copyRights,
              style: ResponsiveScreenProvider.isDesktopDevice(context)
                  ? context.dskTextLowEmphasys
                  : context.mblTextLowEmphasys,
            ),
            const Gap(8),
            Row(
              children: [
                DataValues.locationIcon,
                const Gap(4),
                Text(
                  DataValues.location,
                  style: ResponsiveScreenProvider.isDesktopDevice(context)
                      ? context.dskTextLowEmphasys
                      : context.mblTextLowEmphasys,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
