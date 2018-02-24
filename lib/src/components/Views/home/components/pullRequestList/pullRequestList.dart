import 'package:bitbucket_app/src/components/Views/home/components/pullRequestList/entities/project.dart' as entities;
import 'package:bitbucket_app/src/components/Views/home/components/pullRequestList/components/project.dart';
import 'package:flutter/material.dart';

class PullRequestList extends StatelessWidget {
  final List<entities.Project> projects;

  PullRequestList({
    this.projects
  });

  @override
  Widget build(BuildContext context) {
    Iterable<Project> items = this.projects.map(
        (entities.Project project) => new Project(project: project)
    );

    return new Column(
        children: items.toList()
    );
  }
}


