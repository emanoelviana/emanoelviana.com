import 'package:emanoelviana/src/core/modules/routers_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/single_child_widget.dart';

abstract class RoutersModule {
  final Map<String, WidgetBuilder> _routers;
  final List<SingleChildWidget>? _bindings;

  RoutersModule({
    List<SingleChildWidget>? bindings,
    required Map<String, WidgetBuilder> routers,
  })  : _routers = routers,
        _bindings = bindings;

  Map<String, WidgetBuilder> get routers {
    return _routers.map((key, pageBuilder) => MapEntry(
        key,
        (context) => RoutersPage(
              bindings: _bindings,
              page: pageBuilder,
            )));
  }
}
