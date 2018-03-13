import 'package:bitbucket_app/src/components/sideNavigation/sideNavigation.dart';
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
      drawer: new SideNavigation(),
      body: new Container(
        child: this.body,
        padding: const EdgeInsets.all(10.0),
      ),
    );
  }
}
    
