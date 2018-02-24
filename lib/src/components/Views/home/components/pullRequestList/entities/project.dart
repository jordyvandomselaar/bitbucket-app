import 'package:bitbucket_app/src/components/Views/home/components/pullRequestList/entities/pullRequest.dart';

class Project {
  final String name, url;
  final List<PullRequest> pullRequests;

  const Project({
    this.name,
    this.url,
    this.pullRequests
  });
}
