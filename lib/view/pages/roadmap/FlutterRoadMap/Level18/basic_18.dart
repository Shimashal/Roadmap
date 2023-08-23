// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/done_btn.dart';
import 'package:map_app_task/res/components/launch_url.dart';
import 'package:map_app_task/res/components/levelsbtn.dart';
import 'package:map_app_task/utils/routes/route_name.dart';
import 'package:map_app_task/view/pages/roadmap/shared_pref.dart';


class Level18 extends StatefulWidget {
  final double initialPercentage;
  final void Function(double) updatePercentage;
  final int level;
  final Function(int) onLevelComplete;

  const Level18({
    Key? key,
    required this.initialPercentage,
    required this.updatePercentage,
    required this.level,
    required this.onLevelComplete,
  }) : super(key: key);

  @override
  State<Level18> createState() => _Level18State();
}

class _Level18State extends State<Level18> {
  late double percentage;
  bool isButtonDisabled = false;
  Set<String> completedLevels = {};
  bool isLevelComplete = false;
  bool hasVisitedFastlane = false;
  bool hasVisitedCodemagic = false;
  bool hasVisitedBitrise = false;
  bool hasVisitedGitAction = false;
  bool hasVisitedFirebaseAppDist = false;

 
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
      if (section == 'hasVisitedFastlane') {
        hasVisitedFastlane = true;
      } else if (section == 'hasVisitedCodemagic') {
        hasVisitedCodemagic = true;
      } else if (section == 'hasVisitedBitrise') {
        hasVisitedBitrise = true;
      }
      else if (section == 'hasVisitedGitAction') {
        hasVisitedGitAction = true;
      } else if (section == 'hasVisitedFirebaseAppDist') {
        hasVisitedFirebaseAppDist = true;
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
              "Level: 18",
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
                          'CI/CD (Continuous Integration and Continuous Deployment) is a software development practice that helps to automate the process of building, testing, and deploying mobile apps, including Flutter apps.\n',
                      style: Theme.of(context).textTheme.subtitle1,
                      children: [
                        TextSpan(
                          text: 'With CI/CD, developers can automate the build, test, and deployment process for their Flutter apps, making it easier to catch bugs and deploy new features quickly and efficiently.\n',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        TextSpan(
                          text: 'The key components of a CI/CD pipeline for a Flutter app are:\n',
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
                          text: 'Version control\n',
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
                          text: 'Automated builds\n',
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
                          text: 'Automated testing\n',
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
                          text: 'Deployment\n',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Learn more from the following link:',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "CI/CD - Flutter",
              "https://docs.flutter.dev/deployment/cd",
            ),
            const SizedBox(
              height: 20,
            ),
            LevelBtn(
              onPress: () {
              Navigator.pushNamed(context, RouteName.fastLane);
              _markSectionVisited('hasVisitedFastlane');
              },
              title: 'Fast lane',
            ),
            const SizedBox(
              height: 20,
            ),
            LevelBtn(
              onPress: () {
               Navigator.pushNamed(context, RouteName.codemagic);
               _markSectionVisited('hasVisitedCodemagic');
              },
              title: 'Codemagic',
              disabled: !hasVisitedFastlane,
            ),
            const SizedBox(
              height: 20,
            ),
            LevelBtn(
              onPress: () {
               Navigator.pushNamed(context, RouteName.bitrise_);
               _markSectionVisited('hasVisitedBitrise');
              },
              title: 'Bitrise',
              disabled: !hasVisitedCodemagic,
            ),
             const SizedBox(
              height: 20,
            ),
            LevelBtn(
              onPress: () {
               Navigator.pushNamed(context, RouteName.gitHubActions);
               _markSectionVisited('hasVisitedGitAction');
              },
              title: 'Github Actions',
              disabled: !hasVisitedBitrise,
            ),
             const SizedBox(
              height: 20,
            ),
            LevelBtn(
              onPress: () {
                Navigator.pushNamed(context, RouteName.firebaseAppDistribution);
                _markSectionVisited('hasVisitedFirebaseAppDist');
              },
              title: 'Firebase App Dist',
              disabled: !hasVisitedGitAction,
            ),
            const SizedBox(
              height: 40,
            ),
            DoneBtn(
              onPress: _updatePercentage,
              title: 'Done',
              disabled: isButtonDisabled ||!hasVisitedFirebaseAppDist,
            ),
          ],
        ),
      )),
    );
  }
}
