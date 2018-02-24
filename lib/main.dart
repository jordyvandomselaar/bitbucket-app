import "package:bitbucket_app/src/components/Views/home/index.dart" as home;
import "package:bitbucket_app/src/components/Views/repositories/index.dart";
import "package:flutter/material.dart";

void main() => runApp(new BitbucketApp());

class BitbucketApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Bucketeer",
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Colors.white
      ),
      home: new home.Index(),
      routes: <String, WidgetBuilder>{
        "/repositories": (BuildContext context) => new Index(),
      },
    );
  }
}
