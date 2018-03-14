import "package:flutter/material.dart";

class Auth extends InheritedWidget {
  final ValueNotifier<String> token;

  Auth({this.token, child}) : super(child: child);

  @override
  bool updateShouldNotify(Auth oldWidget) {
    return this.token.value != oldWidget.token.value;
  }

  static Auth of(BuildContext c) {
    return c.inheritFromWidgetOfExactType(Auth);
  }
}
