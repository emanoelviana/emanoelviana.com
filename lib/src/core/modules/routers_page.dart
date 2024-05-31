import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class RoutersPage extends StatelessWidget {
  final List<SingleChildWidget>? _bindings;
  final WidgetBuilder _page;

  const RoutersPage({
    super.key,
    List<SingleChildWidget>? bindings,
    required WidgetBuilder page,
  })  : _page = page,
        _bindings = bindings;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: _bindings ??
          [
            Provider(create: (_) {}),
          ],
      child: Builder(
        builder: (context) => _page(context),
      ),
    );
  }
}
