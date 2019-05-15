import 'package:flutter/material.dart';

class Config extends InheritedWidget {
  Config({
    @required this.appName,
    @required this.appFlavour,
    @required this.apiBaseUrl,
    @required Widget child,
  }) : super(child: child);

  final String appName;
  final String appFlavour;
  final String apiBaseUrl;

  static Config of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(Config);
  }

  bool updateShouldNotify(InheritedWidget oldWidget) => false;
}
