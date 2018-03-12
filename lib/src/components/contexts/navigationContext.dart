import "package:flutter/material.dart";

class NavigationContext extends InheritedWidget {
  ValueNotifier<int> page;
  final Widget child;

  NavigationContext(this.page, this.child) : super(child: child);

  static NavigationContext of(BuildContext c) {
    return c.inheritFromWidgetOfExactType(NavigationContext);
  }

  @override
  bool updateShouldNotify(NavigationContext oldWidget) {
    return page.value != page.value;
  }
}
