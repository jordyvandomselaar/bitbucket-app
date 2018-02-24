import "package:flutter/material.dart";

class SubTitle extends StatelessWidget {
  final String text;

  const SubTitle(this.text);

  @override
  Widget build(BuildContext context) =>
      new Container(
        child: new Text(
          this.text,
          style: new TextStyle(fontSize: 24.0),
          textAlign: TextAlign.center,
        ),
        padding: const EdgeInsets.only(bottom: 20.0, top: 20.0),
      );
}
