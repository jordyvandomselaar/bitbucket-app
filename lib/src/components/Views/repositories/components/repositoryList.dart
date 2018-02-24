import 'package:flutter/material.dart';

class RepositoryList extends StatelessWidget {
  final List<Repository> repositories;

  RepositoryList({
    this.repositories
  });

  @override
  Widget build(BuildContext context) {
    Iterable<ListTile> items = this.repositories.map((repository) => new ListTile(title: new Text(repository.name)));

    return new Column(
      children: items.toList(),
    );
  }
}

class Repository {
  final String name, url;

  const Repository({
    this.name,
    this.url
  });
}
