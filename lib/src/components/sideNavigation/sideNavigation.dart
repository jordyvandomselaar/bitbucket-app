import 'package:bitbucket_app/env/env.dart';
import "package:flutter/material.dart";
import "package:url_launcher/url_launcher.dart" show launch;

class SideNavigation extends StatelessWidget {
  const SideNavigation();

  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: new ListView(
        children: <Widget>[
          new ListTile(
            title: new Text("Home"),
            onTap: () => Navigator.pushNamed(context, "/"),
          ),
          new ListTile(
            title: new Text("Repositories"),
            onTap: () => Navigator.pushNamed(context, "/repositories"),
          ),
          new ListTile(
            title: new Text("Login"),
            onTap: () async {
              await launch(await Env.get("url"), forceWebView: true);
            },
          )
        ],
      ),
    );
  }
}