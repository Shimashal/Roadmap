// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/done_btn.dart';
import 'package:map_app_task/res/components/launch_url.dart';
import 'package:map_app_task/res/components/levelsbtn.dart';
import 'package:map_app_task/utils/routes/route_name.dart';
import 'package:map_app_task/view/pages/roadmap/shared_pref.dart';

class BasicsJava17 extends StatefulWidget {
  final double initialPercentage;
  final void Function(double) updatePercentage;
  final int level;
   final Function(int) onLevelComplete;

  const BasicsJava17({
    Key? key,
    required this.initialPercentage,
    required this.updatePercentage,
    required this.level,
    required this.onLevelComplete,
  }) : super(key: key);

  @override
  State<BasicsJava17> createState() => _BasicsJava17State();
}

class _BasicsJava17State extends State<BasicsJava17> {
  late double percentage;
  bool isButtonDisabled = false;
  Set<String> completedLevels = {};
  bool isLevelComplete = false;
   bool hasVisitedCommonJs = false;
    bool hasVisitedECMAScriptModules = false;

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
      if (section == 'hasVisitedCommonJs') {
        hasVisitedCommonJs = true;
      } else if (section == 'hasVisitedECMAScriptModules') {
        hasVisitedECMAScriptModules = true;
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
                "Modules",
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
                  "Modules encapsulate all sorts of code like functions and variables and expose all this to other files. Generally, we use it to break our code into separate files to make it more maintainable. They were introduced into JavaScript with ECMAScript 6.",
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
                "Modules, introduction",
                "https://javascript.info/modules-intro",
              ),
              
              const SizedBox(
                height: 10,
              ),
              LaunchUrl.buildLink(
                context,
                "Export and Import",
                "https://javascript.info/import-export",
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
                 Navigator.pushNamed(context, RouteName.commonaJS);
                 _markSectionVisited('hasVisitedCommonJs');
                },
                title: 'CommonJS',
              ),
               const SizedBox(
                height: 40,
              ), LevelBtn(
                onPress: () {
                 Navigator.pushNamed(context, RouteName.ecmaScriptModule);
                 _markSectionVisited('hasVisitedECMAScriptModules');
                },
                title: 'ECMAScript Modules',
                disabled: !hasVisitedCommonJs,
              ),
              const SizedBox(
                height: 40,
              ),
              DoneBtn(
                onPress: _updatePercentage,
                title: 'Done',
                disabled: isButtonDisabled || !hasVisitedECMAScriptModules,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
