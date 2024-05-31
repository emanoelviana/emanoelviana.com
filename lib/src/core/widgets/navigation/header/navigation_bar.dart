import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';
import 'package:gap/gap.dart';
import 'package:emanoelviana/src/core/statics/data_values.dart';
import 'package:emanoelviana/src/core/extensions/theme_extension.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 24,
        horizontal: 156,
      ),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: context.color.outlineVariant)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            DataValues.name,
            style: context.text.titleLarge,
          ),
          Row(
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Remix.github_fill)),
              const Gap(4),
              IconButton(onPressed: () {}, icon: const Icon(Remix.medium_fill)),
              const Gap(4),
              IconButton(
                  onPressed: () {}, icon: const Icon(Remix.behance_fill)),
            ],
          ),
        ],
      ),
    );
  }
}
