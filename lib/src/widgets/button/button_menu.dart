// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';

class ButtonMenu extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const ButtonMenu({
    super.key,
    required this.scaffoldKey,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        scaffoldKey.currentState?.openDrawer();
      },
      icon: const Icon(Remix.menu_2_line),
    );
  }
}
