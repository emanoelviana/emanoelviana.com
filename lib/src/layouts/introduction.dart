import 'package:emanoelviana/src/core/extensions/theme_extension.dart';
import 'package:emanoelviana/src/core/statics/data_values.dart';
import 'package:emanoelviana/src/core/widgets/profile/profile_picture.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Introduction extends StatelessWidget {
  final double width;

  const Introduction({
    super.key,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: const EdgeInsets.symmetric(vertical: 64, horizontal: 156),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ProfilePicture(size: 156),
          const Gap(40),
          SizedBox(
            width: 720,
            child: Text(
              DataValues.headline,
              style: context.text.displayLarge,
            ),
          ),
          const Gap(40),
          SizedBox(
            width: 720,
            child: Text(DataValues.introduction, style: context.text.bodyLarge),
          ),
          const Gap(40),
          SizedBox(
            width: 720,
            child: Text(DataValues.professionalState, style: context.text.titleLarge),
          ),
          
        ],
      ),
    );
  }
}
