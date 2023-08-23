// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/done_btn.dart';
import 'package:map_app_task/res/components/launch_url.dart';
import 'package:map_app_task/res/components/levelsbtn.dart';
import 'package:map_app_task/utils/routes/route_name.dart';
import 'package:map_app_task/view/pages/roadmap/shared_pref.dart';

class BasicsJavaTen extends StatefulWidget {
  final double initialPercentage;
  final void Function(double) updatePercentage;
  final int level;
  final Function(int) onLevelComplete;

  const BasicsJavaTen({
    Key? key,
    required this.initialPercentage,
    required this.updatePercentage,
    required this.level, required this.onLevelComplete,
  }) : super(key: key);

  @override
  State<BasicsJavaTen> createState() => _BasicsJavaTenState();
}

class _BasicsJavaTenState extends State<BasicsJavaTen> {
  late double percentage;
  bool isButtonDisabled = false;
  Set<String> completedLevels = {};
  bool isLevelComplete = false;
  bool hasVisitedDefCall = false;
  bool hasVisitedFunctPara = false;
  bool hasVisitedArrowFunc = false;
  bool hasVisitedIIFE = false;
  bool hasVisitedArguObj = false;
  bool hasVisitedScopeFunc = false;
  bool hasVisitedBuiltinFunc = false;

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
      if (section == 'hasVisitedDefCall') {
        hasVisitedDefCall = true;
      } else if (section == 'hasVisitedFunctPara') {
        hasVisitedFunctPara = true;
      }
       else if (section == 'hasVisitedArrowFunc') {
        hasVisitedArrowFunc = true;
      }
       else if (section == 'hasVisitedIIFE') {
        hasVisitedIIFE = true;
      }
      else if (section == 'hasVisitedArguObj') {
        hasVisitedArguObj = true;
      }
       else if (section == 'hasVisitedScopeFunc') {
        hasVisitedScopeFunc = true;
      }
       else if (section == 'hasVisitedBuiltinFunc') {
        hasVisitedBuiltinFunc = true;
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
                "Functions",
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
                  "Functions exist so we can reuse code. They are blocks of code that execute whenever they are invoked. Each function is typically written to perform a particular task, like an addition function used to find the sum of two or more numbers. When numbers need to be added anywhere within your code, the addition function can be invoked as many times as necessary.",
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
                "Functions - MDN Docs",
                "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Functions",
              ),
              const SizedBox(
                height: 10,
              ),
              LaunchUrl.buildLink(
                context,
                "JavaScript Functions - Programming with Mosh",
                "https://www.youtube.com/watch?v=N8ap4k_1QEQ&ab_channel=ProgrammingwithMosh",
              ),
              const SizedBox(
                height: 10,
              ),
              LaunchUrl.buildLink(
                context,
                "JavaScript Functions in Detail - CodeGuage",
                "https://www.codeguage.com/courses/js/functions-basics",
              ),
              
              const SizedBox(
                height: 30,
              ),
              LevelBtn(
                onPress: () {
                Navigator.pushNamed(context, RouteName.definingCalling);
                 _markSectionVisited('hasVisitedDefCall');
                 
                },
                title: 'Defining and Calling Functions',
              ),
              const SizedBox(
                height: 40,
              ),
              LevelBtn(
                onPress: () {
                 Navigator.pushNamed(context, RouteName.functionParam);
                 _markSectionVisited('hasVisitedFunctPara');
                },
                title: 'Function Parameters',
                disabled: !hasVisitedDefCall,
              ),
              const SizedBox(
                height: 40,
              ),
              LevelBtn(
                onPress: () {
                 Navigator.pushNamed(context, RouteName.arrowfunction);
                 _markSectionVisited('hasVisitedArrowFunc');
                },
                title: 'Arrow Functions',
                disabled: !hasVisitedFunctPara,
              ),
              const SizedBox(
                height: 40,
              ),
              LevelBtn(
                onPress: () {
                Navigator.pushNamed(context, RouteName.iifefunc);
                _markSectionVisited('hasVisitedIIFE');
                },
                title: 'IIFE',
                disabled: !hasVisitedArrowFunc,
              ),
              const SizedBox(
                height: 40,
              ),
              LevelBtn(
                onPress: () {
                  Navigator.pushNamed(context, RouteName.argumentObj);
                  _markSectionVisited('hasVisitedArguObj');
                },
                title: 'Arguments object',
                disabled: !hasVisitedIIFE,
              ),
              const SizedBox(
                height: 40,
              ),
              LevelBtn(
                onPress: () {
                Navigator.pushNamed(context, RouteName.funcScopeStack);
                _markSectionVisited('hasVisitedScopeFunc');
                },
                title: 'Scope & Function Stack',
                disabled: !hasVisitedArguObj,
              ),
              const SizedBox(
                height: 40,
              ),
              LevelBtn(
                onPress: () {
                 Navigator.pushNamed(context, RouteName.builtinFunction);
                 _markSectionVisited('hasVisitedBuiltinFunc');
                },
                title: 'Built in functions',
                disabled: !hasVisitedScopeFunc,
              ),
              const SizedBox(
                height: 40,
              ),
             
              DoneBtn(
                onPress: _updatePercentage,
                title: 'Done',
                disabled: isButtonDisabled || !hasVisitedBuiltinFunc,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
