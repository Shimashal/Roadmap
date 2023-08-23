// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class GitHubL6 extends StatefulWidget {
  const GitHubL6({super.key});

  @override
  State<GitHubL6> createState() => _GitHubL6State();
}

class _GitHubL6State extends State<GitHubL6> {
  Future<void> _launchUrl(String url) async {
    await LaunchUrl.launchUrl(url);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text("Github", style: Theme.of(context).textTheme.headline1),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: RichText(
                  textAlign: TextAlign.justify,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text:
                            'GitHub is a web-based platform that provides hosting for software development and version control using Git. It is widely used by developers and organizations around the world to manage and collaborate on software projects.\n',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      TextSpan(
                        text:
                            'With GitHub, you can:\n',
                        style: Theme.of(context).textTheme.subtitle1,
                        children: [
                          const WidgetSpan(
                            child: Padding(
                              padding: EdgeInsets.only(right: 5),
                              child: Icon(
                                Icons.circle,
                                size: 8,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          TextSpan(
                            text:
                                'Store your code in a repository (repo) and version it using Git.\n',
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                         const  WidgetSpan(
                            child: Padding(
                              padding: EdgeInsets.only(right: 5),
                              child: Icon(
                                Icons.circle,
                                size: 8,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          TextSpan(
                            text:
                                'Collaborate with other people on a project by sharing your repo and working together on code changes.\n',
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                           const  WidgetSpan(
                            child: Padding(
                              padding: EdgeInsets.only(right: 5),
                              child: Icon(
                                Icons.circle,
                                size: 8,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          TextSpan(
                            text:
                                'Share your projects with the world by making your repos public.\n',
                            style: Theme.of(context).textTheme.subtitle1,
                          ), const  WidgetSpan(
                            child: Padding(
                              padding: EdgeInsets.only(right: 5),
                              child: Icon(
                                Icons.circle,
                                size: 8,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          TextSpan(
                            text:
                                'Use GitHub to discover new projects and contribute to existing ones by forking a repo, making changes, and submitting a pull request.\n',
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                          const WidgetSpan(
                            child: Padding(
                              padding: EdgeInsets.only(right: 5),
                              child: Icon(
                                Icons.circle,
                                size: 8,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          TextSpan(
                            text:
                                'Track issues and bugs, and manage projects with features like project boards, milestones, and wikis.\n',
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Visit the following resources to learn more:',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              LaunchUrl.buildLink(
                context,
                "Git and GitHub for Beginners - Crash Course",
                "https://www.youtube.com/watch?v=RGOj5yH7evk&ab_channel=freeCodeCamp.org",
              ),
              const SizedBox(
                height: 20,
              ),
              LaunchUrl.buildLink(
                context,
                "Get Started with Github",
                "https://docs.github.com/en",
              ),
              const SizedBox(
                height: 20,
              ),
              LaunchUrl.buildLink(
                context,
                "GitHub Tutorial – for Beginners",
                "https://www.freecodecamp.org/news/git-and-github-for-beginners/",
              ),
            ],
      
          ),
        ),
      ),
    );
  }
}
