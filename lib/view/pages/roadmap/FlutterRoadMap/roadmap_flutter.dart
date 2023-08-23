// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/color.dart';
import 'package:map_app_task/res/components/roadlevel.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level1/basics_one.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level10/basic_ten.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level11/basic_eleven_flutter.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level12/basic_12_state.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level13/basic_13.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level14/basic_14.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level15/basic_15.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level16/basic_16.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level17/basic_17.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level18/basic_18.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level19/basic_19.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level2/basic_two.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level20/basic_20.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level3/level3.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level4/basic_four.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level5/basic_five.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level6/basic_six.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level7/basic_seven.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level8/basic_eight.dart';
import 'package:map_app_task/view/pages/roadmap/FlutterRoadMap/Level9/basic_nine.dart';
import 'package:map_app_task/view/pages/roadmap/connect_custom.dart';
import 'package:map_app_task/view/pages/roadmap/progress.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../res/components/progressprovider.dart';
import '../level_info.dart';

class FlutterGuide extends StatefulWidget {
  const FlutterGuide({Key? key}) : super(key: key);

  @override
  State<FlutterGuide> createState() => _FlutterGuideState();
}

class _FlutterGuideState extends State<FlutterGuide> {
  double percentage = 0.0;
  bool isButtonDisabled = false;
  Set<int> completedLevels = {};
  
  @override
  void initState() {
    super.initState();
    // Load progress from shared preferences
    flutterloadProgress();
  }


    void flutterloadProgress() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    double? savedPercentage = prefs.getDouble('flutterGuidePercentage');
    Set<int>? savedCompletedLevels =
        prefs.getStringList('completedFlutterLevels')?.map(int.parse).toSet();
    if (savedPercentage != null && savedCompletedLevels != null) {
      setState(() {
        percentage = savedPercentage;
        completedLevels = savedCompletedLevels;
      });
    }
  }
void fluttersaveProgress() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setDouble('flutterGuidePercentage', percentage);
    await prefs.setStringList(
      'completedFlutterLevels',
      completedLevels.map((level) => level.toString()).toList(),
    );
  }

void flutterupdatePercentage(double newPercentage) {
    setState(() {
      percentage = newPercentage;
      fluttersaveProgress();
        final progressProvider = Provider.of<ProgressProvider>(context, listen: false);
    progressProvider.updateFlutterProgress(newPercentage);
    });
  }

  bool isLevelEnabled(int level) {
  if (level == 1) return true; // Always enable the first level

  // Check if the level is completed or previously visited
  return completedLevels.contains(level) ||
      completedLevels.contains(level - 1) ||
      isSectionVisited(level);
}
bool isSectionVisited(int section) {
  SharedPreferences.getInstance().then((prefs) {
    return prefs.getBool('section_$section' + '_visited') ?? false;
  });
  return false;
}

void markSectionVisited(int section) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setBool('section_$section' + '_visited', true);
}
void handleLevel(int level) async {
  if (isLevelEnabled(level)) {
    final newPercentage = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => getLevelWidget(level),
      ),
    );
    if (newPercentage != null) {
      // Mark the level as visited (completed) in shared preferences
      completedLevels.add(level);
      flutterupdatePercentage(newPercentage);
      markSectionVisited(level); // Mark the section as visited

      
     
    }
  }
}
Widget getLevelWidget(int level) {
    switch (level) {
      case 1:
        return BasicsDart(
          initialPercentage: percentage,
          updatePercentage: flutterupdatePercentage,
          level: level,
          onLevelComplete: (level) {
            completedLevels.add(level);
            flutterupdatePercentage(percentage + 0.05);
          },
        );
      case 2:
        return Level2(
          initialPercentage: percentage,
          updatePercentage: flutterupdatePercentage,
          level: level,
          onLevelComplete: (level) {
            completedLevels.add(level);
            flutterupdatePercentage(percentage + 0.05);
          },
        );
      case 3:
        return Level3(
          initialPercentage: percentage,
          updatePercentage: flutterupdatePercentage,
          level: level,
          onLevelComplete: (level) {
            completedLevels.add(level);
            flutterupdatePercentage(percentage + 0.05);
          },
        );
      case 4:
        return Level4(
          initialPercentage: percentage,
          updatePercentage: flutterupdatePercentage,
          level: level,
          onLevelComplete: (level) {
            completedLevels.add(level);
            flutterupdatePercentage(percentage + 0.05);
          },
        );
      case 5:
        return Level5(
          initialPercentage: percentage,
          updatePercentage: flutterupdatePercentage,
          level: level,
          onLevelComplete: (level) {
            completedLevels.add(level);
            flutterupdatePercentage(percentage + 0.05);
          },
        );
      case 6:
        return Level6(
          initialPercentage: percentage,
          updatePercentage: flutterupdatePercentage,
          level: level,
          onLevelComplete: (level) {
            completedLevels.add(level);
            flutterupdatePercentage(percentage + 0.05);
          },
        );
      case 7:
        return Level7(
          initialPercentage: percentage,
          updatePercentage: flutterupdatePercentage,
          level: level,
          onLevelComplete: (level) {
            completedLevels.add(level);
            flutterupdatePercentage(percentage + 0.05);
          },
        );
      case 8:
        return Level8(
          initialPercentage: percentage,
          updatePercentage: flutterupdatePercentage,
          level: level,
          onLevelComplete: (level) {
            completedLevels.add(level);
            flutterupdatePercentage(percentage + 0.05);
          },
        );
      case 9:
        return Level9(
          initialPercentage: percentage,
          updatePercentage: flutterupdatePercentage,
          level: level,
          onLevelComplete: (level) {
            completedLevels.add(level);
            flutterupdatePercentage(percentage + 0.05);
          },
        );
      case 10:
        return Level10(
          initialPercentage: percentage,
          updatePercentage: flutterupdatePercentage,
          level: level,
          onLevelComplete: (level) {
            completedLevels.add(level);
            flutterupdatePercentage(percentage + 0.05);
          },
        );
      case 11:
        return Level11(
          initialPercentage: percentage,
          updatePercentage: flutterupdatePercentage,
          level: level,
          onLevelComplete: (level) {
            completedLevels.add(level);
            flutterupdatePercentage(percentage + 0.05);
          },
        );
      case 12:
        return Level12(
          initialPercentage: percentage,
          updatePercentage: flutterupdatePercentage,
          level: level,
          onLevelComplete: (level) {
            completedLevels.add(level);
            flutterupdatePercentage(percentage + 0.05);
          },
        );
      case 13:
        return Level13(
          initialPercentage: percentage,
          updatePercentage: flutterupdatePercentage,
          level: level,
          onLevelComplete: (level) {
            completedLevels.add(level);
            flutterupdatePercentage(percentage + 0.05);
          },
        );
      case 14:
        return Level14(
          initialPercentage: percentage,
          updatePercentage: flutterupdatePercentage,
          level: level,
          onLevelComplete: (level) {
            completedLevels.add(level);
            flutterupdatePercentage(percentage + 0.05);
          },
        );
      case 15:
        return Level15(
          initialPercentage: percentage,
          updatePercentage: flutterupdatePercentage,
          level: level,
          onLevelComplete: (level) {
            completedLevels.add(level);
            flutterupdatePercentage(percentage + 0.05);
          },
        );
      case 16:
        return Level16(
          initialPercentage: percentage,
          updatePercentage: flutterupdatePercentage,
          level: level,
          onLevelComplete: (level) {
            completedLevels.add(level);
            flutterupdatePercentage(percentage + 0.05);
          },
        );
      case 17:
        return Level17(
          initialPercentage: percentage,
          updatePercentage: flutterupdatePercentage,
          level: level,
          onLevelComplete: (level) {
            completedLevels.add(level);
            flutterupdatePercentage(percentage + 0.05);
          },
        );
      case 18:
        return Level18(
          initialPercentage: percentage,
          updatePercentage: flutterupdatePercentage,
          level: level,
          onLevelComplete: (level) {
            completedLevels.add(level);
            flutterupdatePercentage(percentage + 0.05);
          },
        );
      case 19:
        return Level19(
          initialPercentage: percentage,
          updatePercentage: flutterupdatePercentage,
          level: level,
          onLevelComplete: (level) {
            completedLevels.add(level);
            flutterupdatePercentage(percentage + 0.05);
          },
        );
      case 20:
        return Level20(
          initialPercentage: percentage,
          updatePercentage: flutterupdatePercentage,
          level: level,
          onLevelComplete: (level) {
            completedLevels.add(level);
            flutterupdatePercentage(percentage + 0.05);
          },
        );
      default:
        return Container(); // Return an empty container if level is not found
    }
  }


  List<LevelInfo> levels = [
    LevelInfo(title: 'Basics of Dart', level: 1),
    LevelInfo(title: 'Setup Development Environment', level: 2),
    LevelInfo(title: 'Widgets', level: 3),
    LevelInfo(title: 'Working with Assets', level: 4),
    LevelInfo(title: 'Version Control Systems', level: 5),
    LevelInfo(title: 'Repo Hosting Services', level: 6),
    LevelInfo(title: 'Design Principle', level: 7),
    LevelInfo(title: 'Package Manager', level: 8),
    LevelInfo(title: 'Working with APIs', level: 9),
    LevelInfo(title: 'Storage', level: 10),
    LevelInfo(title: 'Advance Dart', level: 11),
    LevelInfo(title: 'State Management', level: 12),
    LevelInfo(title: 'Reactive Programming', level: 13),
    LevelInfo(title: 'Animations', level: 14),
    LevelInfo(title: 'Testing', level: 15),
    LevelInfo(title: 'Dev Tools', level: 16),
    LevelInfo(title: 'Flutter Internals', level: 17),
    LevelInfo(title: 'CI/CD', level: 18),
    LevelInfo(title: 'Analytics', level: 19),
    LevelInfo(title: 'Deployment', level: 20),
  ];

 List<Widget> getLevelWidgets() {
  List<Widget> widgets = [];
  for (var i = 0; i < levels.length; i++) {
    if (i != 0) {
      widgets.add(
        SizedBox(height: 10), // Add spacing between the buttons and connector line
      );
      widgets.add(
        CustomPaint(
          size: Size(20, 40), // Width and height of the connector line
          painter: ConnectorLine(
            startX: 10, // Adjust this value as per your button width
            startY: 0,  // Adjust this value as per your button height
            endY: 40,   // Adjust this value as per your button height
          ),
        ),
      );
      widgets.add(
        SizedBox(height: 10), // Add spacing between the buttons and connector line
      );
    }

    widgets.add(
      Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: isLevelEnabled(levels[i].level)
                      ? AppColors.primaryColor
                      : Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    levels[i].level.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10,),
              Expanded(
                child: RoadLevelBtn(
                  onPress: () => handleLevel(levels[i].level),
                  title: levels[i].title,
                  disabled: !isLevelEnabled(levels[i].level),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
  return widgets;
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Flutter'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              CustomProgressBar(
                width: 370,
                height: 30,
                progress: percentage,
                numSteps: 20,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Let's Start!",
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                "Are you excited to become a Flutter developer?",
                style: Theme.of(context).textTheme.subtitle1,
              ),
              const SizedBox(
                height: 20,
              ),
           ...getLevelWidgets(),
          ],
        ),
      ),
    ),
  );
}
}