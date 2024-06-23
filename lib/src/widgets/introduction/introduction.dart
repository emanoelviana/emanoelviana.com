import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mesh_gradient/mesh_gradient.dart';

import 'package:emanoelviana/src/utils/extensions/theme_extension.dart';
import 'package:emanoelviana/src/utils/providers/theme_provider.dart';
import 'package:emanoelviana/src/widgets/footer/footer.dart';
import 'package:emanoelviana/src/widgets/header/header.dart';
import 'package:emanoelviana/src/widgets/introduction/presentation/presentation.dart';

class Introduction extends ConsumerWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const Introduction({
    super.key,
    required this.scaffoldKey,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(ThemeProvider.provider);

    return MeshGradient(
      points: [
        MeshGradientPoint(
            position: const Offset(0, 0), color: context.color.surface),
        MeshGradientPoint(
            position: const Offset(.6, -.1), color: context.color.surface),
        MeshGradientPoint(
            position: const Offset(1, 0), color: context.color.surface),
        MeshGradientPoint(
          position: const Offset(.75, 1),
          color: themeMode == ThemeMode.dark
              ? context.color.secondaryContainer
              : context.color.primary,
        ),
      ],
      options: MeshGradientOptions(blend: 2, noiseIntensity: .6),
      child: Stack(
        children: [
          const Presentation(),
          const Footer(),
          Header(scaffoldKey: scaffoldKey),
        ],
      ),
    );
  }
}
