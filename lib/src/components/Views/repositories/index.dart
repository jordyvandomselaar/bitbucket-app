import 'package:bitbucket_app/src/components/Views/repositories/components/repositoryList.dart';
import 'package:bitbucket_app/src/components/layouts/main.dart';
import "package:bitbucket_app/src/components/typography/title.dart" as typography;
import "package:flutter/material.dart";

class Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Main(
        body: new ListView(
            children: <Widget>[
              const typography.Title("Repositories"),
              new RepositoryList(
                repositories: <Repository>[
                  const Repository(name: "Kaliber"),
                  const Repository(name: "Kaliber"),
                  const Repository(name: "Kaliber"),
                  const Repository(name: "Kaliber"),
                  const Repository(name: "Kaliber"),
                  const Repository(name: "Kaliber"),
                  const Repository(name: "Kaliber"),
                  const Repository(name: "Kaliber"),
                  const Repository(name: "Kaliber"),
                  const Repository(name: "Kaliber"),
                  const Repository(name: "Kaliber"),
                  const Repository(name: "Kaliber"),
                  const Repository(name: "Kaliber"),
                  const Repository(name: "Kaliber"),
                  const Repository(name: "Kaliber"),
                  const Repository(name: "Kaliber"),
                  const Repository(name: "Kaliber"),
                  const Repository(name: "Kaliber"),
                  const Repository(name: "Kaliber"),
                  const Repository(name: "Kaliber"),
                  const Repository(name: "Kaliber"),
                  const Repository(name: "Kaliber"),
                  const Repository(name: "Kaliber"),
                  const Repository(name: "Kaliber"),
                  const Repository(name: "Kaliber"),
                  const Repository(name: "Kaliber"),
                  const Repository(name: "Kaliber"),
                ],
              )
            ]
        )
    );
  }
}
