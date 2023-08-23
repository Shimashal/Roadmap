// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/done_btn.dart';
import 'package:map_app_task/res/components/launch_url.dart';
import 'package:map_app_task/res/components/levelsbtn.dart';
import 'package:map_app_task/utils/routes/route_name.dart';
import 'package:map_app_task/view/pages/roadmap/shared_pref.dart';

class BasicsJavaOne extends StatefulWidget {
  final double initialPercentage;
  final void Function(double) updatePercentage;
  final int level;
   final Function(int) onLevelComplete;

  const BasicsJavaOne({
    Key? key,
    required this.initialPercentage,
    required this.updatePercentage,
    required this.level, required this.onLevelComplete,
  }) : super(key: key);

  @override
  State<BasicsJavaOne> createState() => _BasicsJavaOneState();
}

class _BasicsJavaOneState extends State<BasicsJavaOne> {
  late double percentage;
  bool isButtonDisabled = false;
  Set<String> completedLevels = {};
  bool isLevelComplete = false;
  bool hasVisitedJava = false;
  bool hasVisitedHistory = false;
  bool hasVisitedJavaVersion = false;
  bool hasVisitedRunJava = false;

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
      if (section == 'hasVisitedJava') {
        hasVisitedJava = true;
      } else if (section == 'hasVisitedHistory') {
        hasVisitedHistory = true;
      }
       else if (section == 'hasVisitedJavaVersion') {
        hasVisitedJavaVersion = true;
      }
       else if (section == 'hasVisitedRunJava') {
        hasVisitedRunJava = true;
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
                "JavaScript",
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
                  "JavaScript, often abbreviated JS, is a programming language that is one of the core technologies of the World Wide Web, alongside HTML and CSS. It lets us add interactivity to pages e.g. you might have seen sliders, alerts, click interactions, popups, etc on different websites — all of that is built using JavaScript. Apart from being used in the browser, it is also used in other non-browser environments as well such as Node.js for writing server-side code in JavaScript, Electron for writing desktop applications, React Native for mobile applications, and so on.",
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
                "JavaScript MDN Docs",
                "https://developer.mozilla.org/en-US/docs/Web/JavaScript",
              ),
              const SizedBox(
                height: 10,
              ),
              LaunchUrl.buildLink(
                context,
                "W3Schools – JavaScript Tutorial",
                "https://www.w3schools.com/js/",
              ),
              const SizedBox(
                height: 10,
              ),
              LaunchUrl.buildLink(
                context,
                "The Modern JavaScript Tutorial",
                "https://javascript.info/",
              ),
               const SizedBox(
                height: 10,
              ),
              LaunchUrl.buildLink(
                context,
                "Exploring JS: JavaScript books for programmers",
                "https://exploringjs.com/",
              ),
               const SizedBox(
                height: 10,
              ),
              LaunchUrl.buildLink(
                context,
                "Eloquent JavaScript textbook",
                "https://eloquentjavascript.net/",
              ),
               const SizedBox(
                height: 10,
              ),
              LaunchUrl.buildLink(
                context,
                "You Dont Know JS Yet (book series)",
                "https://github.com/getify/You-Dont-Know-JS",
              ),
               const SizedBox(
                height: 10,
              ),
              LaunchUrl.buildLink(
                context,
                "JavaScript Crash Course for Beginners",
                "https://www.youtube.com/watch?t=2&v=hdI2bqOjy3c&feature=youtu.be&ab_channel=TraversyMedia",
              ),
               const SizedBox(
                height: 10,
              ),
              LaunchUrl.buildLink(
                context,
                "Build a Netflix Landing Page Clone with HTML, CSS & JS",
                "https://www.youtube.com/watch?t=22&v=P7t13SGytRk&feature=youtu.be&ab_channel=TraversyMedia",
              ),
              const SizedBox(
                height: 30,
              ),
              LevelBtn(
                onPress: () {
                  Navigator.pushNamed(context, RouteName.whatJava);
                   _markSectionVisited('hasVisitedJava');
                },
                title: 'What is JavaScript?',
              ),
              const SizedBox(
                height: 40,
              ),
              LevelBtn(
                onPress: () {
                 Navigator.pushNamed(context, RouteName.historyJava);
                 _markSectionVisited('hasVisitedHistory');
                },
                title: 'History of JavaScript',
                 disabled: !hasVisitedJava,
              ),
              const SizedBox(
                height: 40,
              ),
              LevelBtn(
                onPress: () {
                  Navigator.pushNamed(context, RouteName.versionJava);
                   _markSectionVisited('hasVisitedJavaVersion');
                },
                title: 'Javascript Versions',
                disabled: !hasVisitedHistory,
              ),
              const SizedBox(
                height: 40,
              ),
              LevelBtn(
                onPress: () {
                  Navigator.pushNamed(context, RouteName.howToRunJava);
                  _markSectionVisited('hasVisitedRunJava');
                },
                title: 'How to run Javascript?',
                disabled: !hasVisitedJavaVersion,
              ),
              const SizedBox(
                height: 40,
              ),
              
                DoneBtn(
                  onPress: _updatePercentage,
                  title: 'Done',
                  disabled: isButtonDisabled || !hasVisitedRunJava,
                ),
              
            ],
          ),
        ),
      ),
    );
  }
}
