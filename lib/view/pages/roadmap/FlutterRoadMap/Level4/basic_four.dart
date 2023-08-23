// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/done_btn.dart';
import 'package:map_app_task/res/components/launch_url.dart';
import 'package:map_app_task/res/components/levelsbtn.dart';
import 'package:map_app_task/utils/routes/route_name.dart';
import 'package:map_app_task/view/pages/roadmap/shared_pref.dart';

class Level4 extends StatefulWidget {
  final double initialPercentage;
  final void Function(double) updatePercentage;
  final int level;
   final Function(int) onLevelComplete;

  const Level4({
    Key? key,
    required this.initialPercentage,
    required this.updatePercentage,
    required this.level,
     required this.onLevelComplete,
  }) : super(key: key);

  @override
  State<Level4> createState() => _Level4State();
}

class _Level4State extends State<Level4> {
  late double percentage;
  bool isButtonDisabled = false;
  Set<String> completedLevels = {};
  bool isLevelComplete = false;
  bool hasVisitedFonts = false;
  bool hasVisitedImages = false;
  bool hasVisitedOtherFiles = false;

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
      if (section == 'hasVisitedFonts') {
        hasVisitedFonts = true;
      } else if (section == 'hasVisitedImages') {
        hasVisitedImages = true;
      } else if (section == 'hasVisitedOtherFiles') {
        hasVisitedOtherFiles = true;
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
              "Level: 04",
              style: Theme.of(context).textTheme.headline2!.copyWith(
                    decoration: TextDecoration.underline,
                  ),
            ),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: RichText(
                textAlign: TextAlign.justify,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text:
                          'Assets are resources such as images, fonts, and other files that are included in your app. To use assets in Flutter, you need to specify them in your app’s pubspec.yaml file and then access them in your code.\n',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    TextSpan(
                      text:
                          'Here’s how to work with assets in Flutter:\n',
                      style: Theme.of(context).textTheme.subtitle1,
                      children: [
                        const WidgetSpan(
                          child: Padding(
                            padding: EdgeInsets.only(right: 5),
                            child: Icon(
                              Icons.circle,
                              size: 8,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        TextSpan(
                          text:
                              'Add assets to your app’s pubspec.yaml file:\n',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                       const WidgetSpan(
                          child: Padding(
                            padding: EdgeInsets.only(right: 5),
                            child: Icon(
                              Icons.circle,
                              size: 8,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        TextSpan(
                          text:
                              'Access assets in your code\n',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ],
                    ),
                    
                    TextSpan(
                      text:
                          'The pubspec.yaml file is used to manage dependencies, assets, and other settings in your Flutter app. The flutter section is used to specify assets that should be included with the app. The path specified in the assets section should be relative to the pubspec.yaml file.',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ],
                ),
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
            "Flutter Tutorial - Assets",
            "https://www.youtube.com/watch?v=Hxh6nNHSUjo&ab_channel=TheNetNinja",
          ),
            
            const SizedBox(
              height: 10,
            ),
             LaunchUrl.buildLink(
            context,
            "Adding Assets in Flutter",
            "https://docs.flutter.dev/ui/assets-and-images",
          ),
            
            const SizedBox(
              height: 30,
            ),
            LevelBtn(
              onPress: () {
                Navigator.pushNamed(context, RouteName.Fonts_Level4);
                 _markSectionVisited('hasVisitedFonts');
              },
              title: 'Fonts',
            ),
            const SizedBox(
              height: 20,
            ),
            LevelBtn(
              onPress: () {
                Navigator.pushNamed(context, RouteName.Images_Level4);
                 _markSectionVisited('hasVisitedImages');
              },
              title: 'Images',
              disabled: !hasVisitedFonts,
            ),
            const SizedBox(
              height: 20,
            ),
            LevelBtn(
              onPress: () {
                Navigator.pushNamed(context, RouteName.Othre_File_Level4);
                 _markSectionVisited('hasVisitedOtherFiles');
              },
              title: 'Other File Types',
              disabled: !hasVisitedImages,
            ),
            const SizedBox(
              height: 40,
            ),
           
            DoneBtn(
                onPress: _updatePercentage,
                title: 'Done',
                disabled: isButtonDisabled || !hasVisitedImages,
              ),
          ],
        ),
      )),
    );
  }
}
