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
        title: new Text("Bucketeer"),
      ),
      body: new Container(
        child: this.body,
        padding: const EdgeInsets.all(10.0),
      ),

      bottomNavigationBar: new ButtonBar(
        children: <Widget>[
          new FlatButton.icon(
            icon: new Icon(Icons.home),
            onPressed: () => Navigator.pushNamed(context, "/"),
            label: new Text("Home"),
          ),
          new FlatButton.icon(
              onPressed: () => Navigator.pushNamed(context, "/repositories"),
              icon: new Icon(Icons.list),
              label: new Text("Repositories")
          )
        ],
      ),
    );
  }
}
    
