// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/done_btn.dart';
import 'package:map_app_task/res/components/launch_url.dart';
import 'package:map_app_task/res/components/levelsbtn.dart';
import 'package:map_app_task/utils/routes/route_name.dart';
import 'package:map_app_task/view/pages/roadmap/shared_pref.dart';

class CLITools extends StatefulWidget {
 final double initialPercentage;
  final void Function(double) updatePercentage;
  final int level;
  final Function(int) onLevelComplete;
  

  const CLITools({
    Key? key,
     required this.initialPercentage,
    required this.updatePercentage,
    required this.level,
    required this.onLevelComplete,
  }) : super(key: key);

  @override
  State<CLITools> createState() => _CLIToolsState();
}

class _CLIToolsState extends State<CLITools> {
  late double percentage;
  bool isButtonDisabled = false;
  Set<String> completedLevels = {};
  bool isLevelComplete = false;
   bool hasVisitedVite = false;
  bool hasVisitedCreateReactApp = false;
  
 @override
  void initState() {
    super.initState();
    final levelKey = 'ReactLevel${widget.level}'; // Unique key for each level
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
    final levelKey = 'ReactLevel${widget.level}'; // Unique key for each level
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
      if (section == 'hasVisitedVite') {
        hasVisitedVite = true;
      } else if (section == 'hasVisitedCreateReactApp') {
        hasVisitedCreateReactApp = true;
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
                "CLI Tools",
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
                  "Here is the list of most common CLI tools for React development:",
                  style: Theme.of(context).textTheme.subtitle1,
                  textAlign: TextAlign.justify,
                ),
              ),
               Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    LaunchUrl.buildLink(
                      context,
                      "create-react-app",
                      "https://create-react-app.dev/",
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    LaunchUrl.buildLink(
                      context,
                      "vite",
                      "https://vitejs.dev/",
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              LevelBtn(
                onPress: () {
                  Navigator.pushNamed(context, RouteName.viteCLI);
                  _markSectionVisited('hasVisitedVite');
                },
                title: 'Vite',
              ),
              const SizedBox(
                height: 40,
              ),
              LevelBtn(
                onPress: () {
                  Navigator.pushNamed(context, RouteName.createReactApp);
                  _markSectionVisited('hasVisitedCreateReactApp');
                },
                title: 'Create React App',
                disabled: !hasVisitedVite,
              ),
              
              const SizedBox(
                height: 40,
              ),
              DoneBtn(
                onPress: _updatePercentage,
                title: 'Done',
                disabled: isButtonDisabled || !hasVisitedCreateReactApp,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
