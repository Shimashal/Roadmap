// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/done_btn.dart';
import 'package:map_app_task/res/components/launch_url.dart';
import 'package:map_app_task/res/components/levelsbtn.dart';
import 'package:map_app_task/utils/routes/route_name.dart';
import 'package:map_app_task/view/pages/roadmap/shared_pref.dart';


class Level15 extends StatefulWidget {
  final double initialPercentage;
  final void Function(double) updatePercentage;
  final Function(int) onLevelComplete;
  final int level;

  const Level15({
    Key? key,
    required this.initialPercentage,
    required this.updatePercentage,
     required this.onLevelComplete,
    required this.level,
  }) : super(key: key);

  @override
  State<Level15> createState() => _Level15State();
}

class _Level15State extends State<Level15> {
  late double percentage;
  bool isButtonDisabled = false;
  Set<String> completedLevels = {};
  bool isLevelComplete = false;
  bool hasVisitedUnitTest = false;
  bool hasVisitedWidgetTest = false;
  bool hasVisitedIntegTest = false;
  bool hasVisitedBDDTest = false;
  bool hasVisitedTDDTest = false;
 

 
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
      if (section == 'hasVisitedUnitTest') {
        hasVisitedUnitTest = true;
      } else if (section == 'hasVisitedWidgetTest') {
        hasVisitedWidgetTest = true;
      } else if (section == 'hasVisitedIntegTest') {
        hasVisitedIntegTest = true;
      }
      else if (section == 'hasVisitedBDDTest') {
        hasVisitedBDDTest = true;
      } else if (section == 'hasVisitedTDDTest') {
        hasVisitedTDDTest = true;
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
              "Level: 15",
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
                          'Testing is a crucial part of the development process in Flutter, as it helps you to verify the behavior and appearance of your app and ensure that it behaves correctly and consistently across different devices and platforms.\n',
                      style: Theme.of(context).textTheme.subtitle1,
                      children: [
                        TextSpan(
                          text:
                              'There are several types of tests that you can write to verify the behavior and appearance of your app:\n',
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
                          text: 'Unit tests\n',
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
                          text: 'Widget tests\n',
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
                          text: 'Integration tests\n',
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
                          text: 'Acceptance tests\n',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        TextSpan(
                          text:
                              'In Flutter, you can write tests using the test and flutter_test packages, which provide testing frameworks for writing and running unit tests and widget tests, respectively. You can also use the flutter_driver package, which provides a testing framework for writing and running integration tests.\n',
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
              "Dart Testing",
              "https://dart.dev/guides/testing",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "Testing Flutter apps",
              "https://docs.flutter.dev/testing",
            ),
            const SizedBox(
              height: 20,
            ),
            LevelBtn(
              onPress: () {
                Navigator.pushNamed(context, RouteName.unittestings);
                _markSectionVisited('hasVisitedUnitTest');
              },
              title: 'Unit Testing',

            ),
            const SizedBox(
              height: 20,
            ),
            LevelBtn(
              onPress: () {
                Navigator.pushNamed(context, RouteName.widgettestings);
                _markSectionVisited('hasVisitedWidgetTest');
              },
              title: 'Widget Testing',
              disabled: !hasVisitedUnitTest,
            ),
            const SizedBox(
              height: 20,
            ),
            LevelBtn(
              onPress: () {
                Navigator.pushNamed(context, RouteName.integrationtestings);
                _markSectionVisited('hasVisitedIntegTest');
              },
              title: 'Integration Testing',
              disabled: !hasVisitedWidgetTest,
            ),
            const SizedBox(
              height: 20,
            ),
            LevelBtn(
              onPress: () {
                Navigator.pushNamed(context, RouteName.bddtestings);
                _markSectionVisited('hasVisitedBDDTest');
              },
              title: 'BDD',
              disabled: !hasVisitedIntegTest,
            ),
            const SizedBox(
              height: 20,
            ),
            LevelBtn(
              onPress: () {
                Navigator.pushNamed(context, RouteName.tddtestings);
                _markSectionVisited('hasVisitedTDDTest');
              },
              title: 'TDD',
              disabled: !hasVisitedBDDTest,
            ),
            const SizedBox(
              height: 40,
            ),
            DoneBtn(
              onPress: _updatePercentage,
              title: 'Done',
              disabled: isButtonDisabled || !hasVisitedTDDTest,
            ),
          ],
        ),
      )),
    );
  }
}
