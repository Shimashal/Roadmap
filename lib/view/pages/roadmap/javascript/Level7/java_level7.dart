// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/done_btn.dart';
import 'package:map_app_task/res/components/launch_url.dart';
import 'package:map_app_task/res/components/levelsbtn.dart';
import 'package:map_app_task/utils/routes/route_name.dart';
import 'package:map_app_task/view/pages/roadmap/shared_pref.dart';

class BasicsJavaSeven extends StatefulWidget {
  final double initialPercentage;
  final void Function(double) updatePercentage;
  final int level;
  final Function(int) onLevelComplete;

  const BasicsJavaSeven({
    Key? key,
    required this.initialPercentage,
    required this.updatePercentage,
    required this.level, required this.onLevelComplete,
  }) : super(key: key);

  @override
  State<BasicsJavaSeven> createState() => _BasicsJavaSevenState();
}

class _BasicsJavaSevenState extends State<BasicsJavaSeven> {
  late double percentage;
  bool isButtonDisabled = false;
  Set<String> completedLevels = {};
  bool isLevelComplete = false;
  bool hasVisitedForState = false;
  bool hasVisitedDoWhile = false;
  bool hasVisitedWhileState = false;
  bool hasVisitedForIn = false;
  bool hasVisitedForOF = false;
  bool hasVisitedBreakContinue = false;

   @override
  void initState() {
    super.initState();
    final levelKey = 'JSLevel${widget.level}'; // Unique key for each level
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
    final levelKey = 'JSLevel${widget.level}'; // Unique key for each level
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
      if (section == 'hasVisitedForState') {
        hasVisitedForState = true;
      } else if (section == 'hasVisitedDoWhile') {
        hasVisitedDoWhile = true;
      }
       else if (section == 'hasVisitedWhileState') {
        hasVisitedWhileState = true;
      }
       else if (section == 'hasVisitedForIn') {
        hasVisitedForIn = true;
      }
      else if (section == 'hasVisitedForOF') {
        hasVisitedForOF = true;
      }
       else if (section == 'hasVisitedBreakContinue') {
        hasVisitedBreakContinue = true;
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
                "Level: ${widget.level}",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                      decoration: TextDecoration.underline,
                    ),
              ),
              const SizedBox(
                height: 01,
              ),
              Text(
                "Loops and Iterations",
                style: Theme.of(context).textTheme.headline3!.copyWith(
                      decoration: TextDecoration.underline,
                    ),
              ),
              const SizedBox(
                height: 01,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Loops offer a quick and easy way to do something repeatedly.",
                  style: Theme.of(context).textTheme.subtitle1,
                  textAlign: TextAlign.justify,
                ),
              ),
              const SizedBox(
                height: 03,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "You can think of a loop as a computerized version of the game where you tell someone to take X steps in one direction, then Y steps in another. For example, the idea “Go five steps to the east” could be expressed this way as a loop:",
                  style: Theme.of(context).textTheme.subtitle1,
                  textAlign: TextAlign.justify,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
               // Message Box Card
              const Card(
                elevation: 4,
                child: Padding(
                  padding:  EdgeInsets.all(12.0),
                  child: Text(
                    "for (let step = 0; step < 5; step++) {\n  // Runs 5 times, with values of step 0 through 4.\n  console.log('Walking east one step');\n}",
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
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
                "Loops and iteration",
                "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Loops_and_iteration",
              ),
              
              const SizedBox(
                height: 30,
              ),
              LevelBtn(
                onPress: () {
                  Navigator.pushNamed(context, RouteName.forLoop);
                  _markSectionVisited('hasVisitedForState');
                },
                title: 'for statement',
              ),
              const SizedBox(
                height: 40,
              ),
              LevelBtn(
                onPress: () {
                  Navigator.pushNamed(context, RouteName.doWhileLoop);
                  _markSectionVisited('hasVisitedDoWhile');
                },
                title: 'do...while statement',
                disabled: !hasVisitedForState,
              ),
              const SizedBox(
                height: 40,
              ),
              LevelBtn(
                onPress: () {
                  Navigator.pushNamed(context, RouteName.whileStatement);
                  _markSectionVisited('hasVisitedWhileState');
                },
                title: 'while statement',
                disabled: !hasVisitedDoWhile,
              ),
              const SizedBox(
                height: 40,
              ),
              LevelBtn(
                onPress: () {
                Navigator.pushNamed(context, RouteName.forIn_);
                _markSectionVisited('hasVisitedForIn');
                },
                title: 'for...in Statements',
                disabled: !hasVisitedWhileState,
              ),
              const SizedBox(
                height: 40,
              ),
              LevelBtn(
                onPress: () {
                  Navigator.pushNamed(context, RouteName.forOF_);
                  _markSectionVisited('hasVisitedForOF');
                },
                title: 'for...of Statements',
                disabled: !hasVisitedForIn,
              ),
              const SizedBox(
                height: 40,
              ),
              LevelBtn(
                onPress: () {
                  Navigator.pushNamed(context, RouteName.breakContinue);
                  _markSectionVisited('hasVisitedBreakContinue');
                },
                title: 'break/continue',
                disabled: !hasVisitedForOF,
              ),
              const SizedBox(
                height: 40,
              ),
              
              DoneBtn(
                onPress: _updatePercentage,
                title: 'Done',
                disabled: isButtonDisabled || !hasVisitedBreakContinue,

              ),
            ],
          ),
        ),
      ),
    );
  }
}
