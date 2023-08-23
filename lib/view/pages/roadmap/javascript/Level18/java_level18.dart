// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/done_btn.dart';
import 'package:map_app_task/res/components/launch_url.dart';
import 'package:map_app_task/res/components/levelsbtn.dart';
import 'package:map_app_task/utils/routes/route_name.dart';
import 'package:map_app_task/view/pages/roadmap/shared_pref.dart';

class BasicsJava18 extends StatefulWidget {
  final double initialPercentage;
  final void Function(double) updatePercentage;
  final int level;
  final Function(int) onLevelComplete;

  const BasicsJava18({
    Key? key,
    required this.initialPercentage,
    required this.updatePercentage,
    required this.level,
    required this.onLevelComplete,
  }) : super(key: key);

  @override
  State<BasicsJava18> createState() => _BasicsJava18State();
}

class _BasicsJava18State extends State<BasicsJava18> {
  late double percentage;
  bool isButtonDisabled = false;
  Set<String> completedLevels = {};
  bool isLevelComplete = false;
  bool hasVisitedMemoryLifecycle = false;
  bool hasVisitedGarbageCollection = false;

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
      if (section == 'hasVisitedGarbageCollection') {
        hasVisitedGarbageCollection = true;
      } else if (section == 'hasVisitedMemoryLifecycle') {
        hasVisitedMemoryLifecycle = true;
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
                "Memory Management",
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
                  "Low-level languages like C, have manual memory management primitives such as malloc() and free(). In contrast, JavaScript automatically allocates memory when objects are created and frees it when they are not used anymore (garbage collection). This automaticity is a potential source of confusion: it can give developers the false impression that they don’t need to worry about memory management.",
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
                "JavaScript Garbage Collection",
                "https://javascript.info/garbage-collection",
              ),
              
              const SizedBox(
                height: 10,
              ),
              LaunchUrl.buildLink(
                context,
                "Memory Management in JavaScript",
                "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Memory_Management",
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
                 Navigator.pushNamed(context, RouteName.memoryLifecycle);
                 _markSectionVisited('hasVisitedMemoryLifecycle');
                },
                title: 'Memory Lifecycle',
              ),
               const SizedBox(
                height: 40,
              ), LevelBtn(
                onPress: () {
                 Navigator.pushNamed(context, RouteName.garbageCollect);
                 _markSectionVisited('hasVisitedGarbageCollection');
                },
                title: 'Garbage Collection',
                disabled: !hasVisitedMemoryLifecycle,
              ),
              const SizedBox(
                height: 40,
              ),
              DoneBtn(
                onPress: _updatePercentage,
                title: 'Done',
                disabled: isButtonDisabled || !hasVisitedGarbageCollection,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
