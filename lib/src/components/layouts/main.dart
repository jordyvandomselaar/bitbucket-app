import "package:flutter/material.dart";

class Main extends StatelessWidget {
  final Widget body;

  const Main({
    Key key,
    this.body
  });

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Bitbucket App"),
      ),
      drawer: new Container(
        color: Theme
            .of(context)
            .backgroundColor,
        width: mediaQuery.size.width / 2,
        child: new ListView(
          children: <Widget>[
            new ListTile(
                title: new Text("Home"),
                onTap: () => Navigator.pushNamed(context, "/")
            ),
            new ListTile(
                title: new Text("Repositories"),
                onTap: () => Navigator.pushNamed(context, "/repositories")
            )
          ],
        ),
      ),
      body: new Container(
        child: this.body,
        padding: const EdgeInsets.all(10.0),
      ),
    );
  }
}
    
