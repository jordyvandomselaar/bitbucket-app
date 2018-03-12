import 'package:bitbucket_app/src/components/connectedBottomNavigation/connectedBottomNavigation.dart';
import "package:flutter/material.dart";

class Main extends StatelessWidget {
  final Widget body;

  const Main({
    Key key,
    this.body
  });

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Bucketeer"),
        ),
        body: new Container(
          child: this.body,
          padding: const EdgeInsets.all(10.0),
        ),

        bottomNavigationBar: new ConnectedBottomNavigation()
    );
  }
}
    
