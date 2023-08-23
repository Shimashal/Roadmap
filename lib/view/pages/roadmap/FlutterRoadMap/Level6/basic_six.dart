// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/done_btn.dart';
import 'package:map_app_task/res/components/launch_url.dart';
import 'package:map_app_task/res/components/levelsbtn.dart';
import 'package:map_app_task/utils/routes/route_name.dart';
import 'package:map_app_task/view/pages/roadmap/shared_pref.dart';

class Level6 extends StatefulWidget {
  final double initialPercentage;
  final void Function(double) updatePercentage;
  final int level;
  final Function(int) onLevelComplete;


  const Level6({
    Key? key,
    required this.initialPercentage,
    required this.updatePercentage,
    required this.level,
     required this.onLevelComplete,
  }) : super(key: key);

  @override
  State<Level6> createState() => _Level6State();
}

class _Level6State extends State<Level6> {
  late double percentage;
  bool isButtonDisabled = false;
  Set<String> completedLevels = {};
  bool isLevelComplete = false;
  bool hasVisitedGitHub = false;

@override
  void initState() {
    super.initState();
    final levelKey = 'FlutterLevel${widget.level}'; // Unique key for each level
    percentage = widget.initialPercentage;
    if (completedLevels.contains(levelKey)) {
      setState(() {
        isButtonDisabled = true;
      });
    }
    SharedPref.init().then((_) {
      setState(() {
        isButtonDisabled = SharedPref.getBool('$levelKey-isButtonDisabled');
      });
    });
  }

  void _updatePercentage() async {
    final levelKey = 'FlutterLevel${widget.level}'; // Unique key for each level
    if (!isButtonDisabled) {
      setState(() {
        isButtonDisabled = true;
        completedLevels.add(levelKey);
        isLevelComplete = true;
      });

      widget.updatePercentage(percentage);

      await SharedPref.setBool('$levelKey-isButtonDisabled', true);
      widget.onLevelComplete(widget.level);
    }
  }
void _markSectionVisited(String section) async {
    await SharedPref.setBool(section, true);

    setState(() {
      if (section == 'hasVisitedGitHub') {
        hasVisitedGitHub = true;
      } 
    });
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Level: 06",
              style: Theme.of(context).textTheme.headline2!.copyWith(
                    decoration: TextDecoration.underline,
                  ),
            ),
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
                          'There are several repository hosting services that support Flutter development.\n',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    TextSpan(
                      text:
                          'Here’s how to work with assets in Flutter:\n',
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
                              'GitHub: One of the most widely used repository hosting services for Flutter projects. It provides hosting for Git repositories, issue tracking, collaboration, and many other features.\n',
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
                              'GitLab: A web-based Git repository manager that provides a wide range of features, including version control, issue tracking, continuous integration, and more.\n',
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
                              'Bitbucket: A Git and Mercurial repository hosting service that provides features such as pull requests, code reviews, and team management.\n',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ],
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
                              'AWS CodeCommit: A fully managed Git repository service provided by Amazon Web Services. It integrates with other AWS services and provides features such as branch protection, code reviews, and continuous integration.\n',
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
                              'Azure DevOps: A set of development tools, services, and features provided by Microsoft, including version control (Git), continuous integration, and project management.\n',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                    
                    TextSpan(
                      text:
                          'When choosing a repository hosting service for your Flutter project, consider your specific needs and requirements, such as collaboration, scalability, and cost. You may also want to consider factors such as ease of use, integrations, and support for third-party tools.',
                      style: Theme.of(context).textTheme.subtitle1,
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
              height: 10,
            ),
             LaunchUrl.buildLink(
            context,
            "Host Flutter Website On GitHub Pages",
            "https://www.youtube.com/watch?v=z-yOqoQ2q6s&ab_channel=HeyFlutter%E2%80%A4com",
          ),
            
            const SizedBox(
              height: 10,
            ),
             LaunchUrl.buildLink(
            context,
            "How to Deploy a Flutter Web App?",
            "https://medium.com/solute-labs/flutter-for-web-how-to-deploy-a-flutter-web-app-c7d9db7ced2e",
          ),
            const SizedBox(
              height: 10,
            ),
             LaunchUrl.buildLink(
            context,
            "Deploying - Flutter",
            "https://docs.flutter.dev/deployment/web#deploying-to-the-web",
          ),
          const SizedBox(
              height: 30,
            ),
            LevelBtn(
              onPress: () {
                Navigator.pushNamed(context, RouteName.GitHubL6);
                _markSectionVisited('hasVisitedGitHub');
              },
              title: 'GitHub',
            ),
            const SizedBox(
              height: 40,
            ),
           
            DoneBtn(
                onPress: _updatePercentage,
                title: 'Done',
                disabled: isButtonDisabled || !hasVisitedGitHub,
              ),
          ],
        ),
      )),
    );
  }
}
