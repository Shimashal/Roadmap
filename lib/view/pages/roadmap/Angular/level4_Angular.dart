// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/done_btn.dart';
import 'package:map_app_task/res/components/launch_url.dart';
import 'package:map_app_task/view/pages/roadmap/shared_pref.dart';

class AngularLevel4 extends StatefulWidget {
   final double initialPercentage;
  final void Function(double) updatePercentage;
  
  final int level;
  final Function(int) onLevelComplete;

  const AngularLevel4({
    Key? key,
    required this.initialPercentage,
    required this.updatePercentage,
    required this.level,
    required this.onLevelComplete,
  }) : super(key: key);

  @override
  State<AngularLevel4> createState() => _AngularLevel4State();
}

class _AngularLevel4State extends State<AngularLevel4> {
   late double percentage;
  bool isButtonDisabled = false;
  Set<String> completedLevels = {};
  bool isLevelComplete = false;

 
  @override
  void initState() {
    super.initState();
    final levelKey = 'AngularLevel${widget.level}'; // Unique key for each level
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
    final levelKey = 'AngularLevel${widget.level}'; // Unique key for each level
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
                "Typescript Basics",
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
                  "In order to enter into the world of Angular application development, typescript is necessary and it is the primary language here. Typescript is a superset of JavaScript. It comes with design-time support which is useful for type safety and tooling. Since, browsers cannot execute the TypeScript directly, it will be ‘Transpiled’ into JavaScript using the tsc compiler.",
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
                  "Visit the following resources to learn more:",
                  style: Theme.of(context).textTheme.subtitle1,
                  textAlign: TextAlign.justify,
                ),
              ),
               const SizedBox(
                height: 10,
              ),
              LaunchUrl.buildLink(
                context,
                "Typescript a Beginners Guide",
                "https://medium.com/jspoint/typescript-a-beginners-guide-6956fe8bcf9e",
              ),
               const SizedBox(
                height: 10,
              ),
              LaunchUrl.buildLink(
                context,
                "TypeScript Playground",
                "https://www.typescriptlang.org/play",
              ),
            
              const SizedBox(
                height: 40,
              ),
              DoneBtn(
                onPress: _updatePercentage,
                title: 'Done',
                disabled: isButtonDisabled,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
