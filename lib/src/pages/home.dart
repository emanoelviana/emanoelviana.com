import 'package:emanoelviana/src/widgets/introduction/dsk_introduction.dart';
import 'package:flutter/material.dart';
import 'package:emanoelviana/src/widgets/drawer/gob_drawer.dart';

class Home extends StatelessWidget {
  static final GlobalKey<ScaffoldState> scaffoldKey =
      GlobalKey<ScaffoldState>();
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const GobDrawer(),
      body: DskIntroduction(scaffoldKey: scaffoldKey),
    );
  }
}
