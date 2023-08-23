// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/done_btn.dart';
import 'package:map_app_task/res/components/launch_url.dart';
import 'package:map_app_task/res/components/levelsbtn.dart';
import 'package:map_app_task/utils/routes/route_name.dart';
import 'package:map_app_task/view/pages/roadmap/shared_pref.dart';


class Level19 extends StatefulWidget {
  final double initialPercentage;
  final void Function(double) updatePercentage;
  final int level;
  final Function(int) onLevelComplete;

  const Level19({
    Key? key,
    required this.initialPercentage,
    required this.updatePercentage,
    required this.level,
    required this.onLevelComplete,
  }) : super(key: key);

  @override
  State<Level19> createState() => _Level19State();
}

class _Level19State extends State<Level19> {
  late double percentage;
  bool isButtonDisabled = false;
  Set<String> completedLevels = {};
  bool isLevelComplete = false;
  bool hasVisitedMixpanel = false;
  bool hasVisitedSegment = false;


void _markSectionVisited(String section) async {
    await SharedPref.setBool(section, true);

    setState(() {
      if (section == 'hasVisitedMixpanel') {
        hasVisitedMixpanel = true;
      } else if (section == 'hasVisitedSegment') {
        hasVisitedSegment = true;
      }
    });
  }
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
              "Level: 19",
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
                          'Analytics is a key aspect of understanding user behavior and measuring app performance for Flutter apps. There are a number of analytics tools available for Flutter apps, each with their own set of features and benefits. Some of the most popular analytics tools for Flutter include:\n',
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
                          text: 'Firebase Analytics: A free analytics tool provided by Google that helps to understand user behavior and measure app performance for mobile apps. \n',
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
                          text: 'Google Analytics: A free web analytics service provided by Google that helps to understand user behavior and measure app performance for mobile apps.\n',
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
                          text: 'Mixpanel: A paid analytics tool that provides a range of features for tracking user behavior, including real-time dashboards, user segmentation, and funnels.\n',
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
                          text: 'Segment: A paid analytics tool that provides a range of features for tracking user behavior, including real-time dashboards, user segmentation, and funnels.\n',
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
              "Flutter Analytics using Firebase",
              "https://www.youtube.com/watch?v=31KpJXqCayo&ab_channel=FilledStacks",
            ),
             const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "Top Flutter Analytics",
              "https://fluttergems.dev/analytics-consumer-insights/",
            ),
            const SizedBox(
              height: 20,
            ),
            LevelBtn(
              onPress: () {
              Navigator.pushNamed(context, RouteName.mixPanel);
              _markSectionVisited('hasVisitedMixpanel');
              },
              title: 'Mixpanel',
            ),
            const SizedBox(
              height: 20,
            ),
            LevelBtn(
              onPress: () {
              Navigator.pushNamed(context, RouteName.segments);
              _markSectionVisited('hasVisitedSegment');
              },
              title: 'Segment',
              disabled: !hasVisitedMixpanel,
            ),
           
            const SizedBox(
              height: 40,
            ),
            DoneBtn(
              onPress: _updatePercentage,
              title: 'Done',
              disabled: isButtonDisabled ||!hasVisitedSegment,
            ),
          ],
        ),
      )),
    );
  }
}
