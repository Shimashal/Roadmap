// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/done_btn.dart';
import 'package:map_app_task/res/components/launch_url.dart';
import 'package:map_app_task/res/components/levelsbtn.dart';
import 'package:map_app_task/utils/routes/route_name.dart';
import 'package:map_app_task/view/pages/roadmap/shared_pref.dart';
import 'package:url_launcher/url_launcher.dart';

class Level2 extends StatefulWidget {
  final double initialPercentage;
  final void Function(double) updatePercentage;
  final int level;
  final Function(int) onLevelComplete;


  const Level2({
    Key? key,
    required this.initialPercentage,
    required this.updatePercentage,
    required this.level,
     required this.onLevelComplete,
  }) : super(key: key);

  @override
  State<Level2> createState() => _Level2State();
}

class _Level2State extends State<Level2> {
  late double percentage;
  bool isButtonDisabled = false;
  Set<String> completedLevels = {};
  bool isLevelComplete = false;
  bool hasVisitedFCLI = false;
  bool hasVisitedIDES = false;
  bool hasVisitedFVM = false;

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
    if (section == 'hasVisitedFCLI') {
      hasVisitedFCLI = true;
    } else if (section == 'hasVisitedIDES') {
      hasVisitedIDES = true;
    } else if (section == 'hasVisitedFVM') {
      hasVisitedFVM = true;
    }
  });
}

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await canLaunch(uri.toString())) {
      throw Exception('Could not launch $url');
    }
    await launch(uri.toString());
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
              "Level: 02",
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
                "Flutter SDK: Download and install the latest version of the Flutter SDK from the official website (https://flutter.dev/docs/get-started/install).",
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
            "Get started with Flutter",
            "https://docs.flutter.dev/get-started/install",
          ),
            
            const SizedBox(
              height: 10,
            ),
             LaunchUrl.buildLink(
            context,
            "Installing Dart SDK",
            "https://dart.dev/get-dart",
          ),
            
            const SizedBox(
              height: 30,
            ),
            LevelBtn(
              onPress: () {
                Navigator.pushNamed(context, RouteName.Flutter_CLI);
                 _markSectionVisited('hasVisitedFCLI');
                
              },
              title: 'Flutter CLI',
             
            ),
            const SizedBox(
              height: 20,
            ),
            LevelBtn(
              onPress: () {
                Navigator.pushNamed(context, RouteName.idesLevel2);
                 _markSectionVisited('hasVisitedIDES');
              },
              title: 'IDEs',
              disabled: !hasVisitedFCLI, 
            ),
            const SizedBox(
              height: 20,
            ),
            LevelBtn(
              onPress: () {
                Navigator.pushNamed(context, RouteName.fvmLevel2);
                 _markSectionVisited('hasVisitedFVM');
              },
              title: 'FVM',
              disabled: !hasVisitedIDES,
            ),
            const SizedBox(
              height: 40,
            ),
           
            DoneBtn(
                onPress: _updatePercentage,
                title: 'Done',
                disabled: isButtonDisabled || !hasVisitedFVM,
              ),
          ],
        ),
      )),
    );
  }
}
