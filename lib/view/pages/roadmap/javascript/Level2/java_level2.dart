// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/done_btn.dart';
import 'package:map_app_task/res/components/launch_url.dart';
import 'package:map_app_task/res/components/levelsbtn.dart';
import 'package:map_app_task/utils/routes/route_name.dart';
import 'package:map_app_task/view/pages/roadmap/shared_pref.dart';

class BasicsJavaTwo extends StatefulWidget {
  final double initialPercentage;
  final void Function(double) updatePercentage;
  final int level;
  final Function(int) onLevelComplete;

  const BasicsJavaTwo({
    Key? key,
    required this.initialPercentage,
    required this.updatePercentage,
    required this.level, required this.onLevelComplete,
  }) : super(key: key);

  @override
  State<BasicsJavaTwo> createState() => _BasicsJavaTwoState();
}

class _BasicsJavaTwoState extends State<BasicsJavaTwo> {
  late double percentage;
  bool isButtonDisabled = false;
  Set<String> completedLevels = {};
  bool isLevelComplete = false;
  bool hasVisitedVariable = false;
  bool hasVisitedHoisting = false;
  bool hasVisitedNamingRule = false;
  bool hasVisitedVarScope= false;

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
      if (section == 'hasVisitedVariable') {
        hasVisitedVariable = true;
      } else if (section == 'hasVisitedHoisting') {
        hasVisitedHoisting = true;
      }
       else if (section == 'hasVisitedNamingRule') {
        hasVisitedNamingRule = true;
      }
       else if (section == 'hasVisitedVarScope') {
        hasVisitedVarScope = true;
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
                "Javascript Variables",
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
                  "Most of the time, a JavaScript application needs to work with information. To store and represent this information in the JavaScript codebase, we use variables. A variable is a container for a value.",
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
                "JavaScript Variables",
                "https://javascript.info/variables",
              ),
              const SizedBox(
                height: 10,
              ),
              LaunchUrl.buildLink(
                context,
                "Storing the information you need — Variables",
                "https://developer.mozilla.org/en-US/docs/Learn/JavaScript/First_steps/Variables",
              ),
             
              const SizedBox(
                height: 30,
              ),
              LevelBtn(
                onPress: () {
                  Navigator.pushNamed(context, RouteName.varDeclarations);
                  _markSectionVisited('hasVisitedVariable');
                },
                title: 'Variable Declarations',
              ),
              const SizedBox(
                height: 40,
              ),
              LevelBtn(
                onPress: () {
                 Navigator.pushNamed(context, RouteName.hoistingJava);
                 _markSectionVisited('hasVisitedHoisting');
                },
                title: 'Hoisting',
                disabled: !hasVisitedVariable,
              ),
              const SizedBox(
                height: 40,
              ),
              LevelBtn(
                onPress: () {
                  Navigator.pushNamed(context, RouteName.varNaming);
                  _markSectionVisited('hasVisitedNamingRule');
                },
                title: 'Variable Naming Rules',
                disabled: !hasVisitedHoisting,
              ),
               const SizedBox(
                height: 40,
              ),
              LevelBtn(
                onPress: () {
                  Navigator.pushNamed(context, RouteName.varScopes);
                  _markSectionVisited('hasVisitedVarScope');
                },
                title: 'Variable Scopes',
                disabled: !hasVisitedNamingRule,
              ),
              const SizedBox(
                height: 40,
              ),
              
                DoneBtn(
                  onPress: _updatePercentage,
                  title: 'Done',
                  disabled: isButtonDisabled ||!hasVisitedVarScope,
                ),
              
            ],
          ),
        ),
      ),
    );
  }
}
