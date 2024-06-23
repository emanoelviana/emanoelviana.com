import 'package:emanoelviana/src/utils/extensions/theme_extension.dart';
import 'package:emanoelviana/src/utils/statics/data_values.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:simple_ripple_animation/simple_ripple_animation.dart';

class ButtonOpenForFreelance extends StatelessWidget {
  const ButtonOpenForFreelance({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(48),
          border: Border.all(
            width: .32,
            color: context.color.outlineVariant,
          )),
      child: Row(
        children: [
          RippleAnimation(
            ripplesCount: 2,
            repeat: true,
            minRadius: 10,
            color: context.color.primary.withOpacity(.64),
            child: Container(
              width: 8,
              height: 8,
              decoration: BoxDecoration(
                color: context.color.primary,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          const Gap(16),
          Text(
            DataValues.availability,
            style: context.text.bodyLarge,
          ),
        ],
      ),
    );
  }
}
