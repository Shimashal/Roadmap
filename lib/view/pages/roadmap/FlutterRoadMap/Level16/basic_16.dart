// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/done_btn.dart';
import 'package:map_app_task/res/components/launch_url.dart';
import 'package:map_app_task/res/components/levelsbtn.dart';
import 'package:map_app_task/utils/routes/route_name.dart';
import 'package:map_app_task/view/pages/roadmap/shared_pref.dart';

class Level16 extends StatefulWidget {
  final double initialPercentage;
  final void Function(double) updatePercentage;
  final int level;
  final Function(int) onLevelComplete;
  

  const Level16({
    Key? key,
    required this.initialPercentage,
    required this.updatePercentage,
    required this.level,
    required this.onLevelComplete,
  }) : super(key: key);

  @override
  State<Level16> createState() => _Level16State();
}

class _Level16State extends State<Level16> {
  late double percentage;
  bool isButtonDisabled = false;
  Set<String> completedLevels = {};
  bool isLevelComplete = false;
  bool hasVisitedInspector = false;
  bool hasVisitedOutline = false;
  bool hasVisitedMemoryAlloc = false;

  
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
      if (section == 'hasVisitedInspector') {
        hasVisitedInspector = true;
      } else if (section == 'hasVisitedOutline') {
        hasVisitedOutline = true;
      } else if (section == 'hasVisitedMemoryAlloc') {
        hasVisitedMemoryAlloc = true;
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
              "Level: 16",
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
                          'Flutter DevTools is a suite of development tools provided by Flutter to help developers build, test, and debug Flutter apps. The tools include:\n',
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
                          text: 'CLI: A command-line interface for managing and building Flutter apps.\n',
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
                          text: 'Doctor: A tool for diagnosing Flutter installation issues.\n',
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
                          text: 'Emulator: An emulator for running and testing Flutter apps.\n',
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
                          text: 'Observatory: A performance profiling tool for Flutter apps.\n',
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
                          text: 'Dart DevTools: A browser-based suite of development tools for Dart, including a debugger and performance profiling tools.\n',
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
                          text: 'Hot Reload: A feature that allows developers to see the impact of code changes in real-time.\n',
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
                          text: 'DevTools Extension: A browser extension that provides advanced debugging and performance profiling capabilities for Flutter apps.\n',
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
              "Flutter - DevTools",
              "https://docs.flutter.dev/tools/devtools/overview",
            ),
             const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "Dart DevTools",
              "https://dart.dev/tools/dart-devtools",
            ),
            const SizedBox(
              height: 20,
            ),
            LevelBtn(
              onPress: () {
              Navigator.pushNamed(context, RouteName.flutterinspector);
              _markSectionVisited('hasVisitedInspector');
              },
              title: 'Flutter Inspector',
            ),
            const SizedBox(
              height: 20,
            ),
            LevelBtn(
              onPress: () {
               Navigator.pushNamed(context, RouteName.flutterOutline);
               _markSectionVisited('hasVisitedOutline');
              },
              title: 'Flutter Outline',
              disabled: !hasVisitedInspector,
            ),
            const SizedBox(
              height: 20,
            ),
            LevelBtn(
              onPress: () {
               Navigator.pushNamed(context, RouteName.memoryAllocation);
               _markSectionVisited('hasVisitedMemoryAlloc');
              },
              title: 'Memory Allocation',
              disabled: !hasVisitedOutline,
            ),
            const SizedBox(
              height: 40,
            ),
            DoneBtn(
              onPress: _updatePercentage,
              title: 'Done',
              disabled: isButtonDisabled || !hasVisitedMemoryAlloc,
            ),
          ],
        ),
      )),
    );
  }
}
