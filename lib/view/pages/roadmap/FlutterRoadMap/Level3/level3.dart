import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/done_btn.dart';
import 'package:map_app_task/res/components/launch_url.dart';
import 'package:map_app_task/res/components/levelsbtn.dart';
import 'package:map_app_task/utils/routes/route_name.dart';
import 'package:map_app_task/view/pages/roadmap/shared_pref.dart';

class Level3 extends StatefulWidget {
  final double initialPercentage;
  final void Function(double) updatePercentage;
  final int level;
  final Function(int) onLevelComplete;

  const Level3({
    Key? key,
    required this.initialPercentage,
    required this.updatePercentage,
    required this.level,
    required this.onLevelComplete,
  }) : super(key: key);

  @override
  State<Level3> createState() => _Level3State();
}

class _Level3State extends State<Level3> {
  late double percentage;
  bool isButtonDisabled = false;
  Set<String> completedLevels = {};
  bool isLevelComplete = false;
  bool hasVisitedInherited = false;
  bool hasVisitedStateless = false;
  bool hasVisitedStateful = false;
  bool hasVisitedStyled = false;

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
      if (section == 'hasVisitedInherited') {
        hasVisitedInherited = true;
      } else if (section == 'hasVisitedStateless') {
        hasVisitedStateless = true;
      } else if (section == 'hasVisitedStateful') {
        hasVisitedStateful = true;
      } else if (section == 'hasVisitedStyled') {
        hasVisitedStyled = true;
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
              "Level: 03",
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
                "Widgets in Flutter are the basic building blocks of the user interface. They define how the UI looks and behaves. Widgets can be combined to create complex user interfaces and can be easily customized. Some common types of widgets include: Text,Image,Button,Container,Card,Column & Row,ListView,AppBar and Scaffold",
                style: Theme.of(context).textTheme.subtitle1,
                textAlign: TextAlign.justify,
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
              "Introduction to widgets",
              "https://docs.flutter.dev/ui/widgets-intro",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "Widget catalog",
              "https://docs.flutter.dev/ui/widgets",
            ),
            const SizedBox(
              height: 20,
            ),
            LaunchUrl.buildLink(
              context,
              "Flutter Widgets Explained",
              "https://www.youtube.com/watch?v=FU2Eeizo95o&ab_channel=RetroPortalStudio",
            ),
            const SizedBox(
              height: 30,
            ),
            LevelBtn(
              onPress: () {
                Navigator.pushNamed(context, RouteName.Inherited_widget);
                _markSectionVisited('hasVisitedInherited');
              },
              title: 'Inherited Widgets',
            ),
            const SizedBox(
              height: 20,
            ),
            LevelBtn(
              onPress: () {
                Navigator.pushNamed(context, RouteName.STATELESS_WIDGET);
                _markSectionVisited('hasVisitedStateless');
              },
              title: 'Stateless Widgets',
              disabled: !hasVisitedInherited,
            ),
            const SizedBox(
              height: 20,
            ),
            LevelBtn(
              onPress: () {
                Navigator.pushNamed(context, RouteName.STATE_FULL_WIDGET);
                _markSectionVisited('hasVisitedStateful');
              },
              title: 'Stateful Widgets',
              disabled: !hasVisitedStateless,
            ),
            const SizedBox(
              height: 20,
            ),
            LevelBtn(
              onPress: () {
                Navigator.pushNamed(context, RouteName.Style_Widgets);
                _markSectionVisited('hasVisitedStyled');
              },
              title: 'Styled Widgets',
              disabled: !hasVisitedStateful,
            ),
            const SizedBox(
              height: 40,
            ),
            DoneBtn(
              onPress: _updatePercentage,
              title: 'Done',
              disabled: isButtonDisabled || !hasVisitedStyled,
            ),
          ],
        ),
      )),
    );
  }
}
