// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/done_btn.dart';
import 'package:map_app_task/res/components/launch_url.dart';
import 'package:map_app_task/res/components/levelsbtn.dart';
import 'package:map_app_task/utils/routes/route_name.dart';
import 'package:map_app_task/view/pages/roadmap/shared_pref.dart';

class Level8 extends StatefulWidget {
  final double initialPercentage;
  final void Function(double) updatePercentage;
  final int level;
  final Function(int) onLevelComplete;

  const Level8({
    Key? key,
    required this.initialPercentage,
    required this.updatePercentage,
    required this.level,
    required this.onLevelComplete,
    
  }) : super(key: key);

  @override
  State<Level8> createState() => _Level8State();
}

class _Level8State extends State<Level8> {
  late double percentage;
  bool isButtonDisabled = false;
  Set<String> completedLevels = {};
  bool isLevelComplete = false;
  bool hasVisitedpubDev = false;
  bool hasVisitedFlutterPub = false;
   

 @override
  void initState() {
    super.initState();
    final levelKey = 'FlutterLevel${widget.level}'; // Unique key for each level
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
    final levelKey = 'FlutterLevel${widget.level}'; // Unique key for each level
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
      if (section == 'hasVisitedpubDev') {
        hasVisitedpubDev = true;
      } else if (section == 'hasVisitedFlutterPub') {
        hasVisitedFlutterPub = true;
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
              "Level: 08",
              style: Theme.of(context).textTheme.headline2!.copyWith(
                    decoration: TextDecoration.underline,
                  ),
            ),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "The package manager for Flutter is called pub. It is used to manage Flutter projects’ dependencies and publish Flutter packages. It is included with the Flutter SDK and can be run from the command line using the pub command.",
                style: Theme.of(context).textTheme.subtitle1,
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Visit the following resource to learn more:',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
             LaunchUrl.buildLink(
            context,
            "Packages and Plugins",
            "https://docs.flutter.dev/packages-and-plugins",
          ),
            const SizedBox(
              height: 20,
            ),
           LaunchUrl.buildLink(
            context,
            "Dart Package Manager (pub.dev) in Flutter",
            "https://www.youtube.com/watch?v=F1VRO0_MKLs&ab_channel=FlutterExplained",
          ),
        
          const SizedBox(
              height: 30,
            ),
            LevelBtn(
              onPress: () {
                Navigator.pushNamed(context, RouteName.PubDev);
                _markSectionVisited('hasVisitedpubDev');
              },
              title: 'pub.dev',
            ),
             const SizedBox(
              height: 20,
            ),
            LevelBtn(
              onPress: () {
                Navigator.pushNamed(context, RouteName.Flutter_Pub);
                _markSectionVisited('hasVisitedFlutterPub');
              },
              title: 'flutter pub / dart pub',
              disabled: !hasVisitedpubDev,
            ),
          
            const SizedBox(
              height: 40,
            ),
           
            DoneBtn(
                onPress: _updatePercentage,
                title: 'Done',
                disabled: isButtonDisabled || !hasVisitedFlutterPub,
              ),
          ],
        ),
      )),
    );
  }
}
