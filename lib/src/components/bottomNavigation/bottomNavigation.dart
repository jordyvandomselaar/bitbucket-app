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
          if (index == nc.page.value) {
            return;
          }

          nc.page.value = index;

          switch (index) {
            case 0:
              Navigator.of(context).pushNamed("/");
              break;
            case 1:
              Navigator.of(context).pushNamed("/repositories");
              break;
          }
        }
    );
  }
}
