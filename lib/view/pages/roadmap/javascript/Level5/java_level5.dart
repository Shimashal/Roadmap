// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/done_btn.dart';
import 'package:map_app_task/res/components/launch_url.dart';
import 'package:map_app_task/res/components/levelsbtn.dart';
import 'package:map_app_task/utils/routes/route_name.dart';
import 'package:map_app_task/view/pages/roadmap/shared_pref.dart';

class BasicsJavaFive extends StatefulWidget {
  final double initialPercentage;
  final void Function(double) updatePercentage;
  final int level;
  final Function(int) onLevelComplete;

  const BasicsJavaFive({
    Key? key,
    required this.initialPercentage,
    required this.updatePercentage,
    required this.level, required this.onLevelComplete,
  }) : super(key: key);

  @override
  State<BasicsJavaFive> createState() => _BasicsJavaFiveState();
}

class _BasicsJavaFiveState extends State<BasicsJavaFive> {
  late double percentage;
  bool isButtonDisabled = false;
  Set<String> completedLevels = {};
  bool isLevelComplete = false;
  bool hasVisitedKeyedCol = false;
  bool hasVisitedStructData = false;
  bool hasVisitedIndexedCol = false;

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
      if (section == 'hasVisitedKeyedCol') {
        hasVisitedKeyedCol = true;
      } else if (section == 'hasVisitedStructData') {
        hasVisitedStructData = true;
      }
       else if (section == 'hasVisitedIndexedCol') {
        hasVisitedIndexedCol = true;
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
                "Data Structures",
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
                  "A Data structure is a format to organize, manage and store data in a way that allows efficient access and modification. JavaScript has primitive (built-in) and non-primitive (not built-in) data structures. Primitive data structures come by default with the programming language and you can implement them out of the box (like arrays and objects). Non-primitive data structures don’t come by default and you have to code them up if you want to use them.",
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
                "Data structures",
                "https://www.freecodecamp.org/news/data-structures-in-javascript-with-examples/#what-is-a-data-structure",
              ),
              const SizedBox(
                height: 10,
              ),
              LaunchUrl.buildLink(
                context,
                "Introduction to the Stack Data Structure",
                "https://www.youtube.com/watch?v=4F-BnR2XwqU&feature=youtu.be&ab_channel=Coderbyte",
              ),
              const SizedBox(
                height: 10,
              ),
              LaunchUrl.buildLink(
                context,
                "Introduction to the Queue Data Structure",
                "https://www.youtube.com/watch?v=GRA_3Ppl2ZI&feature=youtu.be&ab_channel=Coderbyte",
              ),
               const SizedBox(
                height: 10,
              ),
              LaunchUrl.buildLink(
                context,
                "Intro to Recursion: Anatomy of a Recursive Solution",
                "https://www.youtube.com/watch?v=yBWlPte6FhA&feature=youtu.be&ab_channel=Coderbyte",
              ),
               const SizedBox(
                height: 10,
              ),
              LaunchUrl.buildLink(
                context,
                "Binary Tree Algorithms for Technical Interviews - Full Course",
                "https://www.youtube.com/watch?v=fAAZixBzIAI&feature=youtu.be&ab_channel=freeCodeCamp.org",
              ),
               const SizedBox(
                height: 10,
              ),
              LaunchUrl.buildLink(
                context,
                "Graph Algorithms for Technical Interviews - Full Course",
                "https://www.youtube.com/watch?v=tWVWeAqZ0WU&feature=youtu.be&ab_channel=freeCodeCamp.org",
              ),
              const SizedBox(
                height: 10,
              ),
              LaunchUrl.buildLink(
                context,
                "Dynamic Programming - Learn to Solve Algorithmic Problems & Coding Challenges",
                "https://www.youtube.com/watch?v=oBt53YbR9Kk&ab_channel=freeCodeCamp.org",
              ),
              const SizedBox(
                height: 30,
              ),
              LevelBtn(
                onPress: () {
                  Navigator.pushNamed(context, RouteName.keyedCollections);
                  _markSectionVisited('hasVisitedKeyedCol');
                },
                title: 'Keyed Collections',
              ),
              const SizedBox(
                height: 40,
              ),
              LevelBtn(
                onPress: () {
                Navigator.pushNamed(context, RouteName.structuredData);
                _markSectionVisited('hasVisitedStructData');
                },
                title: 'Structured Data',
                disabled: !hasVisitedKeyedCol,
              ),
              const SizedBox(
                height: 40,
              ),
              LevelBtn(
                onPress: () {
                  Navigator.pushNamed(context, RouteName.indexedCollections);
                  _markSectionVisited('hasVisitedIndexedCol');
                },
                title: 'Indexed Collections',
                disabled: !hasVisitedStructData,
              ),
              const SizedBox(
                height: 40,
              ),
              
                DoneBtn(
                  onPress: _updatePercentage,
                  title: 'Done',
                  disabled: isButtonDisabled ||!hasVisitedIndexedCol,
                ),
              
            ],
          ),
        ),
      ),
    );
  }
}
