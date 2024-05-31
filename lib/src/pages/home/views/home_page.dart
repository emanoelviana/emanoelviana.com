import 'package:emanoelviana/src/layouts/introduction.dart';
import 'package:flutter/material.dart';
import 'package:emanoelviana/src/core/widgets/navigation/header/navigation_bar.dart' as nav;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: constraints.maxHeight,
              minWidth: constraints.maxWidth,
            ),
            child: IntrinsicHeight(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// Navigation
                  const nav.NavigationBar(),

                  /// Introduction Section
                  Introduction(
                    width: constraints.maxWidth,
                  )
                ],
              ),
            ),
          ),
        );
      },
    ));
  }
}
