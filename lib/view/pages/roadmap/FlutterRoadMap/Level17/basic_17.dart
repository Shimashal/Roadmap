// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/done_btn.dart';
import 'package:map_app_task/res/components/launch_url.dart';
import 'package:map_app_task/res/components/levelsbtn.dart';
import 'package:map_app_task/utils/routes/route_name.dart';
import 'package:map_app_task/view/pages/roadmap/shared_pref.dart';

class Level17 extends StatefulWidget {
  final double initialPercentage;
  final void Function(double) updatePercentage;
  final int level;
  final Function(int) onLevelComplete;

  const Level17({
    Key? key,
    required this.initialPercentage,
    required this.updatePercentage,
    required this.level,
    required this.onLevelComplete,
  }) : super(key: key);

  @override
  State<Level17> createState() => _Level17State();
}

class _Level17State extends State<Level17> {
  late double percentage;
  bool isButtonDisabled = false;
  Set<String> completedLevels = {};
  bool isLevelComplete = false;
  bool hasVisitedRenderObj = false;
  bool hasVisited3Trees = false;
  bool hasVisitedImmutability = false;

  
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
      if (section == 'hasVisitedRenderObj') {
        hasVisitedRenderObj = true;
      } else if (section == 'hasVisited3Trees') {
        hasVisited3Trees = true;
      } else if (section == 'hasVisitedImmutability') {
        hasVisitedImmutability = true;
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
              "Level: 17",
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
                          'The internal workings of Flutter refer to the underlying mechanisms and architecture that make up the Flutter framework.\n',
                      style: Theme.of(context).textTheme.subtitle1,
                      children: [
                        TextSpan(
                          text:
                              'At a high level, Flutter is a reactive framework for building user interfaces, which means that it allows developers to build dynamic, responsive apps that update automatically in response to changes in the state of the app.\n',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        TextSpan(
                          text:
                              'Flutter achieves this by using a unique rendering engine that is based on the Skia graphics library. The rendering engine allows Flutter to render complex animations and graphics with high performance, and it also provides a way for Flutter to manage the layout and size of widgets in the app.\n',
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
              "Flutter - Internals",
              "https://www.didierboelens.com/blog/en/flutter-internals",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "Overview of Flutter Internals",
              "https://flutter.megathink.com/",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "Flutter and Dart | Widget & Flutter Internals",
              "https://www.youtube.com/watch?v=FBXMvOmiOLE&ab_channel=SkillUp",
            ),
            const SizedBox(
              height: 20,
            ),
            LevelBtn(
              onPress: () {
                Navigator.pushNamed(context, RouteName.renderObject);
                _markSectionVisited('hasVisitedRenderObj');
              },
              title: 'Render Objects',
            ),
            const SizedBox(
              height: 20,
            ),
            LevelBtn(
              onPress: () {
                Navigator.pushNamed(context, RouteName.immutabilityInternal);
                _markSectionVisited('hasVisitedImmutability');
              },
              title: 'Immutability',
              disabled: !hasVisitedRenderObj,
            ),
            const SizedBox(
              height: 20,
            ),
            LevelBtn(
              onPress: () {
                Navigator.pushNamed(context, RouteName.threeTrees);
                _markSectionVisited('hasVisited3Trees');
              },
              title: '3 Trees',
              disabled: !hasVisitedImmutability,
            ),
            const SizedBox(
              height: 40,
            ),
            DoneBtn(
              onPress: _updatePercentage,
              title: 'Done',
              disabled: isButtonDisabled || !hasVisited3Trees,
            ),
          ],
        ),
      )),
    );
  }
}
