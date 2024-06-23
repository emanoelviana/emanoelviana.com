import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mesh_gradient/mesh_gradient.dart';

import 'package:emanoelviana/src/utils/extensions/theme_extension.dart';
import 'package:emanoelviana/src/utils/providers/theme_provider.dart';
import 'package:emanoelviana/src/widgets/footer/footer.dart';
import 'package:emanoelviana/src/widgets/header/header.dart';
import 'package:emanoelviana/src/widgets/introduction/presentation/dsk_presentation.dart';

class DskIntroduction extends ConsumerWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const DskIntroduction({
    super.key,
    required this.scaffoldKey,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(ThemeProvider.provider);

    // Background -  Mesh Gradient
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
                : context.color.primary),
      ],
      options: MeshGradientOptions(blend: 2, noiseIntensity: .6),

      // Introduction Content
      child: Stack(
        children: [
          // Text Related Content
          const DskPresentation(),

          // Footer
          const Footer(),

          // Header
          Header(scaffoldKey: scaffoldKey),
        ],
      ),
    );
  }
}
