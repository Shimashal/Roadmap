// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/done_btn.dart';
import 'package:map_app_task/res/components/launch_url.dart';
import 'package:map_app_task/res/components/levelsbtn.dart';
import 'package:map_app_task/utils/routes/route_name.dart';
import 'package:map_app_task/view/pages/roadmap/shared_pref.dart';

class Level20 extends StatefulWidget {
  final double initialPercentage;
  final void Function(double) updatePercentage;
  final int level;
  final Function(int) onLevelComplete;

  const Level20({
    Key? key,
    required this.initialPercentage,
    required this.updatePercentage,
    required this.level,
    required this.onLevelComplete,
  }) : super(key: key);

  @override
  State<Level20> createState() => _Level20State();
}

class _Level20State extends State<Level20> {
  late double percentage;
  bool isButtonDisabled = false;
  Set<String> completedLevels = {};
  bool isLevelComplete = false;
  bool hasVisitedAppStore = false;
  bool hasVisitedPlaystore = false;
  bool hasVisitedGuide = false;

  
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
      if (section == 'hasVisitedAppStore') {
        hasVisitedAppStore = true;
      } else if (section == 'hasVisitedPlaystore') {
        hasVisitedPlaystore = true;
      } else if (section == 'hasVisitedGuide') {
        hasVisitedGuide = true;
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
              "Level: 20",
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
                          'Deployment in Flutter refers to the process of releasing a Flutter app to end-users. There are several steps involved in deploying a Flutter app, including:\n',
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
                          text: 'Building the app\n',
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
                          text: 'Testing the app\n',
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
                          text: 'Configuring app settings\n',
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
                          text: 'Releasing to app stores\n',
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
                          text: 'Updating the app\n',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        TextSpan(
                          text:
                              'In general, deploying a Flutter app involves a combination of technical skills and experience, as well as knowledge of the relevant app stores and their policies and requirements.\n',
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
                'Visit the following resource to learn more:',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "Flutter - Web deployment",
              "https://dart.dev/web/deployment",
            ),
            const SizedBox(
              height: 20,
            ),
            LevelBtn(
              onPress: () {
                Navigator.pushNamed(context, RouteName.appStore);
                _markSectionVisited('hasVisitedAppStore');
              },
              title: 'Appstore',
            ),
            const SizedBox(
              height: 20,
            ),
            LevelBtn(
              onPress: () {
                Navigator.pushNamed(context, RouteName.playstores);
                _markSectionVisited('hasVisitedPlaystore');
              },
              title: 'Playstore',
              disabled: !hasVisitedAppStore,
            ),
            const SizedBox(
              height: 20,
            ),
            LevelBtn(
              onPress: () {
                Navigator.pushNamed(context, RouteName.guidelineprotocols);
                _markSectionVisited('hasVisitedGuide');
              },
              title: 'Guidelines and Protocols',
              disabled: !hasVisitedPlaystore,
            ),
            const SizedBox(
              height: 40,
            ),
            DoneBtn(
              onPress: _updatePercentage,
              title: 'Done',
              disabled: isButtonDisabled || !hasVisitedGuide,
            ),
          ],
        ),
      )),
    );
  }
}
