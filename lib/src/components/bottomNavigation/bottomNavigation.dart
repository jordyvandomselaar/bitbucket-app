import "package:bitbucket_app/src/components/contexts/navigationContext.dart";
import "package:flutter/material.dart";

class BottomNavigation extends StatelessWidget {
  const BottomNavigation();

  @override
  Widget build(BuildContext context) {
    final NavigationContext nc = NavigationContext.of(context);

    return new BottomNavigationBar(
        currentIndex: nc.page.value,
        items: <BottomNavigationBarItem>[
          new BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text("Home"),
          ),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.list),
              title: new Text("Repositories")
          ),
        ],
        onTap: (int index) {
          nc.page.value = index;
        }
    );
  }
}
//
//class BottomNavigation extends StatefulWidget {
//  Function(int index) _onUpdate;
//  int _currentIndex;
//
//  BottomNavigation(this._onUpdate, this._currentIndex);
//
//  @override
//  _BottomNavigationState createState() => new _BottomNavigationState();
//}
//
//class _BottomNavigationState extends State<BottomNavigation> {
//  @override
//  Widget build(BuildContext context) {
//    return new BottomNavigationBar(
//      currentIndex: widget._currentIndex,
//      items: <BottomNavigationBarItem>[
//        new BottomNavigationBarItem(
//          icon: new Icon(Icons.home),
//          title: new Text("Home"),
//        ),
//        new BottomNavigationBarItem(
//            icon: new Icon(Icons.list),
//            title: new Text("Repositories")
//        ),
//      ],
//      onTap: (int index) => widget._onUpdate(index)
//    );
//  }
//
//  void handleNavigation(BuildContext context, int index) {
//    this.setState(() {
//      widget._currentIndex = index;
//    });
//
//    switch (index) {
//      case 0:
//        Navigator.pushNamed(context, "/");
//        break;
//      case 1:
//        Navigator.pushNamed(context, "/repositories");
//        break;
//    }
//  }
//}
////    return new ButtonBar(
////      children: <Widget>[
////        new FlatButton.icon(
////          icon: new Icon(Icons.home),
////          onPressed: () => Navigator.pushNamed(context, "/"),
////          label: new Text("Home"),
////        ),
////        new FlatButton.icon(
////            onPressed: () => Navigator.pushNamed(context, "/repositories"),
////            icon: new Icon(Icons.list),
////            label: new Text("Repositories")
////        )
////      ],
////    );
