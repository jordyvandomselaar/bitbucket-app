import "package:flutter/material.dart";

class Title extends StatelessWidget {
  final String text;

  const Title(this.text);

  @override
  Widget build(BuildContext context) =>
      new Container(
        child: new Text(
          this.text,
          style: new TextStyle(fontSize: 32.0),
          textAlign: TextAlign.center,
        ),
        padding: const EdgeInsets.only(bottom: 10.0, top: 10.0),
      );
}
