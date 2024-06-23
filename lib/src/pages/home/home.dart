import 'package:emanoelviana/src/widgets/introduction/introduction.dart';
import 'package:flutter/material.dart';
import 'package:emanoelviana/src/widgets/side_bar/side_bar.dart';

class Home extends StatelessWidget {
  static final GlobalKey<ScaffoldState> scaffoldKey =
      GlobalKey<ScaffoldState>();
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const SideBar(),
      body: Introduction(scaffoldKey: scaffoldKey),
    );
  }
}
