import 'package:bitbucket_app/src/components/bottomNavigation/bottomNavigation.dart';
import 'package:bitbucket_app/src/components/contexts/navigationContext.dart';
import "package:flutter/material.dart";

ValueNotifier<int> page = new ValueNotifier(0);

class ConnectedBottomNavigation extends StatefulWidget {
  @override
  State createState() {
    return new _State();
  }
}

class _State extends State<ConnectedBottomNavigation> {
  @override
  void initState() {
    super.initState();
    page.addListener(didValueChange);
  }

  didValueChange() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return new NavigationContext(
        page,
        new BottomNavigation()
    );
  }

  @override
  void dispose() {
    super.dispose();
    page.removeListener(didValueChange);
  }
}
