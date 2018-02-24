import "package:bitbucket_app/src/components/Views/home/components/pullRequestList/entities/project.dart" as entities;
import 'package:bitbucket_app/src/components/Views/home/components/pullRequestList/entities/pullRequest.dart';
import "package:flutter/material.dart";

class Project extends StatelessWidget {
  final entities.Project project;

  const Project({this.project});

  @override
  Widget build(BuildContext context) {
    Iterable<ListTile> pullRequests = this.project.pullRequests.map(
            (PullRequest pullRequest) =>
        new ListTile(
          title: new Text(pullRequest.name),
        )
    );

    return new Column(
      children: <Widget>[
        new Container(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: new Text(this.project.name, textAlign: TextAlign.center),
        ),
        new Column(
          children: pullRequests.toList(),
        )
      ],
    );
  }
}
