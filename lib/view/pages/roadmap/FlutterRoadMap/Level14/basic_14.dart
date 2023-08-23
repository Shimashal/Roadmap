// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/done_btn.dart';
import 'package:map_app_task/res/components/launch_url.dart';
import 'package:map_app_task/res/components/levelsbtn.dart';
import 'package:map_app_task/utils/routes/route_name.dart';
import 'package:map_app_task/view/pages/roadmap/shared_pref.dart';

class Level14 extends StatefulWidget {
  final double initialPercentage;
  final void Function(double) updatePercentage;
  final int level;
  final Function(int) onLevelComplete;

  const Level14({
    Key? key,
    required this.initialPercentage,
    required this.updatePercentage,
    required this.level,
    required this.onLevelComplete,
  }) : super(key: key);

  @override
  State<Level14> createState() => _Level14State();
}

class _Level14State extends State<Level14> {
  late double percentage;
  bool isButtonDisabled = false;
  Set<String> completedLevels = {};
  bool isLevelComplete = false;
  bool hasVisitedCurvedAnim = false;
  bool hasVisitedAnimController = false;
  bool hasVisitedAnimBuilder = false;
  bool hasVisitedAnimWidget = false;
  bool hasVisitedHero = false;
  bool hasVisitedOpacity = false;


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
      if (section == 'hasVisitedCurvedAnim') {
        hasVisitedCurvedAnim = true;
      } else if (section == 'hasVisitedAnimController') {
        hasVisitedAnimController = true;
      } else if (section == 'hasVisitedAnimBuilder') {
        hasVisitedAnimBuilder = true;
      }
      else if (section == 'hasVisitedAnimWidget') {
        hasVisitedAnimWidget = true;
      } else if (section == 'hasVisitedHero') {
        hasVisitedHero = true;
      }
       else if (section == 'hasVisitedOpacity') {
        hasVisitedOpacity = true;
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
              "Level: 14",
              style: Theme.of(context).textTheme.headline2!.copyWith(
                    decoration: TextDecoration.underline,
                  ),
            ),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Flutter’s animation support makes it easy to implement a variety of animation types. Many widgets, especially Material widgets, come with the standard motion effects defined in their design spec, but it’s also possible to customize these effects.",
                style: Theme.of(context).textTheme.subtitle1,
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "Introduction to animations",
              "https://docs.flutter.dev/ui/animations",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "Animation library",
              "https://api.flutter.dev/flutter/animation/animation-library.html",
            ),
            const SizedBox(
              height: 30,
            ),
            LevelBtn(
              onPress: () {
                Navigator.pushNamed(context, RouteName.Curved_Animations);
                _markSectionVisited('hasVisitedCurvedAnim');
              },
              title: 'CurvedAnimations',
            ),
            const SizedBox(
              height: 20,
            ),
            LevelBtn(
              onPress: () {
                Navigator.pushNamed(context, RouteName.animation_controller);
                _markSectionVisited('hasVisitedAnimController');
              },
              title: 'AnimationController',
              disabled: !hasVisitedCurvedAnim,
            ),
            const SizedBox(
              height: 20,
            ),
            LevelBtn(
              onPress: () {
                Navigator.pushNamed(context, RouteName.Animated_Builders);
                _markSectionVisited('hasVisitedAnimBuilder');
              },
              title: 'AnimatedBuilder',
              disabled: !hasVisitedAnimController,
            ),
            const SizedBox(
              height: 20,
            ),
            LevelBtn(
              onPress: () {
                Navigator.pushNamed(context, RouteName.Animated_Widgets);
                _markSectionVisited('hasVisitedAnimWidget');
              },
              title: 'AnimatedWidget',
              disabled: !hasVisitedAnimBuilder,
            ),
            const SizedBox(
              height: 20,
            ),
            LevelBtn(
              onPress: () {
                Navigator.pushNamed(context, RouteName.HeroAnimations);
                _markSectionVisited('hasVisitedHero');
              },
              title: 'Hero',
              disabled: !hasVisitedAnimWidget,
            ),
            const SizedBox(
              height: 20,
            ),
            LevelBtn(
              onPress: () {
                Navigator.pushNamed(context, RouteName.OpaciityAnimations);
                _markSectionVisited('hasVisitedOpacity');
              },
              title: 'Opacity',
              disabled: !hasVisitedHero,
            ),
            const SizedBox(
              height: 40,
            ),
            DoneBtn(
              onPress: _updatePercentage,
              title: 'Done',
              disabled: isButtonDisabled || !hasVisitedOpacity,
            ),
          ],
        ),
      )),
    );
  }
}
