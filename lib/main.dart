import "package:bitbucket_app/src/components/Views/home/index.dart" as home;
import "package:bitbucket_app/src/components/Views/repositories/index.dart";
import 'package:bitbucket_app/src/state/auth.dart';
import "package:flutter/material.dart";

void main() => runApp(new BitbucketApp());

class BitbucketApp extends StatefulWidget {
  ValueNotifier<String> authToken = new ValueNotifier<String>("");

  @override
  State createState() => new _State();

}

class _State extends State<BitbucketApp> {
  void authTokenChanged() {
    setState(() {});
  }

  @override
  void initState() {
    super.initState();

    widget.authToken.addListener(authTokenChanged);
  }

  void dispose() {
    super.dispose();

    widget.authToken.removeListener(authTokenChanged);
  }

  @override
  Widget build(BuildContext context) {
    return new Auth(
        token: widget.authToken,
        child: new MaterialApp(
          title: "Bucketeer",
          theme: new ThemeData(
              primarySwatch: Colors.blue,
              backgroundColor: Colors.white
          ),
          home: new home.Index(),
          routes: <String, WidgetBuilder>{
            "/repositories": (_) => new Index(),
          },
        )
    );
  }
}
