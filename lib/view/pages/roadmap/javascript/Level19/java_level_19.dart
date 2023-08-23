// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/done_btn.dart';
import 'package:map_app_task/res/components/launch_url.dart';
import 'package:map_app_task/res/components/levelsbtn.dart';
import 'package:map_app_task/utils/routes/route_name.dart';
import 'package:map_app_task/view/pages/roadmap/shared_pref.dart';

class BasicsJava19 extends StatefulWidget {
  final double initialPercentage;
  final void Function(double) updatePercentage;
  final int level;
  final Function(int) onLevelComplete;

  const BasicsJava19({
    Key? key,
    required this.initialPercentage,
    required this.updatePercentage,
    required this.level,
    required this.onLevelComplete,
  }) : super(key: key);

  @override
  State<BasicsJava19> createState() => _BasicsJava19State();
}

class _BasicsJava19State extends State<BasicsJava19> {
  late double percentage;
  bool isButtonDisabled = false;
  Set<String> completedLevels = {};
  bool isLevelComplete = false;
  bool hasVisitedDebuggingIssues = false;
  bool hasVisitedDebuggingMemoryLeaks = false;
  bool hasVisitedDebuggingPerformance = false;
          
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
      if (section == 'hasVisitedDebuggingIssues') {
        hasVisitedDebuggingIssues = true;
      } else if (section == 'hasVisitedDebuggingMemoryLeaks') {
        hasVisitedDebuggingMemoryLeaks = true;
      }
       else if (section == 'hasVisitedDebuggingPerformance') {
        hasVisitedDebuggingPerformance = true;
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
                "Javascript chrome dev tools",
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
                  "These are a set of tools built into the browser to aid frontend developers diagnose and solve various issues in their applications — such as JavaScript and logical bugs, CSS styling issues or even just making quick temporary alterations to the DOM.",
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
                  "To enter the dev tools, right click and click Inspect (or press ctrl+shift+c/cmd+opt+c) to enter the Elements panel. Here you can debug CSS and HTML issues. If you want to see logged messages or interact with javascript, enter the Console tab from the tabs above (or press ctrl+shift+j or F12 /cmd+opt+j to enter it directly). Another very useful feature in the Chrome dev tools is the Lighthouse (for checking performance).",
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
                  "NOTE: This isn’t a chrome-specific feature, and most browsers (Chromium based or otherwise) will have their own, largely-similar set of devtools.",
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
                "Official Docs",
                "https://developer.chrome.com/docs/devtools/overview/",
              ),
              
              const SizedBox(
                height: 10,
              ),
              LaunchUrl.buildLink(
                context,
                "Mastering Chrome Dev Tools",
                "https://www.freecodecamp.org/news/mastering-chrome-developer-tools-next-level-front-end-development-techniques-3ac0b6fe8a3/",
              ),
              
              const SizedBox(
                height: 10,
              ),
              LaunchUrl.buildLink(
                context,
                "Dynamic imports",
                "https://javascript.info/modules-dynamic-imports",
              ),
               const SizedBox(
                height: 40,
              ), LevelBtn(
                onPress: () {
                 Navigator.pushNamed(context, RouteName.debugIssues);
                 _markSectionVisited('hasVisitedDebuggingIssues');
                },
                title: 'Debugging Issues',
              ),
               const SizedBox(
                height: 40,
              ), LevelBtn(
                onPress: () {
                Navigator.pushNamed(context, RouteName.debugMemoryLeak);
                _markSectionVisited('hasVisitedDebuggingMemoryLeaks');
                },
                title: 'Debugging Memory Leaks',
                disabled: !hasVisitedDebuggingIssues,
               
              ),
               const SizedBox(
                height: 40,
              ), LevelBtn(
                onPress: () {
                Navigator.pushNamed(context, RouteName.debugPerformance);
                _markSectionVisited('hasVisitedDebuggingIssues');
                },
                title: 'Debugging Performance',
                disabled: !hasVisitedDebuggingMemoryLeaks,
                 
              ),
              const SizedBox(
                height: 40,
              ),
              DoneBtn(
                onPress: _updatePercentage,
                title: 'Done',
                disabled: isButtonDisabled  || !hasVisitedDebuggingIssues,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
