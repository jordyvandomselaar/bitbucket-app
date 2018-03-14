import 'package:bitbucket_app/src/components/Views/home/components/pullRequestList/entities/project.dart';
import 'package:bitbucket_app/src/components/Views/home/components/pullRequestList/entities/pullRequest.dart';
import 'package:bitbucket_app/src/components/Views/home/components/pullRequestList/pullRequestList.dart';
import 'package:bitbucket_app/src/components/layouts/main.dart';
import "package:bitbucket_app/src/components/typography/subTitle.dart" as typography;
import "package:bitbucket_app/src/components/typography/title.dart" as typography;
import 'package:bitbucket_app/src/state/auth.dart';
import 'package:flutter/material.dart';

class Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Main(
        body: new ListView(
            children: <Widget>[
              const typography.Title("Home"),
              new Card(
                  child: new Column(
                    children: <Widget>[
                      new Text(Auth
                          .of(context)
                          .token
                          .value),
                      new Text("Token above me."),
                      const typography.SubTitle("Your Pull requests"),
                      new PullRequestList(
                        projects: <Project>[
                          new Project(
                              name: "Kaliber",
                              pullRequests: <PullRequest>[
                                new PullRequest(name: "KA-45"),
                                new PullRequest(name: "KA-42"),
                                new PullRequest(name: "KA-43"),
                                new PullRequest(name: "KA-43"),
                                new PullRequest(name: "KA-43"),
                                new PullRequest(name: "KA-43"),
                                new PullRequest(name: "KA-43"),
                                new PullRequest(name: "KA-43"),
                                new PullRequest(name: "KA-43"),
                                new PullRequest(name: "KA-44"),
                              ]
                          ),
                          new Project(
                              name: "KNHB",
                              pullRequests: <PullRequest>[
                                new PullRequest(name: "KB-20"),
                                new PullRequest(name: "KB-21"),
                                new PullRequest(name: "KB-22"),
                                new PullRequest(name: "KB-22"),
                                new PullRequest(name: "KB-22"),
                                new PullRequest(name: "KB-22"),
                                new PullRequest(name: "KB-22"),
                                new PullRequest(name: "KB-22"),
                                new PullRequest(name: "KB-22"),
                                new PullRequest(name: "KB-22"),
                                new PullRequest(name: "KB-23"),
                              ]
                          )
                        ],
                      )
                    ],
                  )
              )
            ]
        )
    );
  }
}
