// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/color.dart';
import 'package:map_app_task/res/components/roadlevel.dart';
import 'package:map_app_task/view/pages/roadmap/connect_custom.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level1/java_level1.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level10/java_level10.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level11/java_level_11.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level12/java_level12.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level13/java_level13.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level14/java_level14.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level15/java_level_15.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level16/java_level_16.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level17/java_level17.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level18/java_level18.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level19/java_level_19.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level2/java_level2.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level3/java_level3_main.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level4/java_level4.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level5/java_level5.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level6/java_level6.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level7/java_level7.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level8/java_level8.dart';
import 'package:map_app_task/view/pages/roadmap/javascript/Level9/java_level9.dart';
import 'package:map_app_task/view/pages/roadmap/level_info.dart';
import 'package:map_app_task/view/pages/roadmap/progress.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../res/components/progressprovider.dart';

class JavaScriptGuide extends StatefulWidget {
  const JavaScriptGuide({Key? key}) : super(key: key);

  @override
  State<JavaScriptGuide> createState() => _JavaScriptGuideState();
}

class _JavaScriptGuideState extends State<JavaScriptGuide> {
  double percentage = 0.0;
  bool isButtonDisabled = false;
  Set<int> completedLevels = {};
  @override
  void initState() {
    super.initState();
    // Load progress from shared preferences
    jsloadProgress();
  }

    void jsloadProgress() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    double? savedPercentage = prefs.getDouble('javascriptGuidePercentage');
    Set<int>? savedCompletedLevels =
        prefs.getStringList('completedjavascriptLevels')?.map(int.parse).toSet();
    if (savedPercentage != null && savedCompletedLevels != null) {
      setState(() {
        percentage = savedPercentage;
        completedLevels = savedCompletedLevels;
      });
    }
  }
void jssaveProgress() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setDouble('javascriptGuidePercentage', percentage);
    await prefs.setStringList(
      'completedjavascriptLevels',
      completedLevels.map((level) => level.toString()).toList(),
    );
  }

void jsupdatePercentage(double newPercentage) {
    setState(() {
      percentage = newPercentage;
      jssaveProgress();

       final progressProvider = Provider.of<ProgressProvider>(context, listen: false);
    progressProvider.updateJSProgress(newPercentage);
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
      jsupdatePercentage(newPercentage);
      markSectionVisited(level); // Mark the section as visited
    }
  }
}
Widget getLevelWidget(int level) {
    switch (level) {
      case 1:
        return BasicsJavaOne(
          initialPercentage: percentage,
          updatePercentage: jsupdatePercentage,
          level: level,
          onLevelComplete: (level) {
            completedLevels.add(level);
            jsupdatePercentage(percentage + 0.05263);
          },
        );
      case 2:
        return BasicsJavaTwo(
          initialPercentage: percentage,
          updatePercentage: jsupdatePercentage,
          level: level,
          onLevelComplete: (level) {
            completedLevels.add(level);
            jsupdatePercentage(percentage + 0.05263);
          },
        );
      case 3:
        return BasicsJavaThree(
          initialPercentage: percentage,
          updatePercentage: jsupdatePercentage,
          level: level,
          onLevelComplete: (level) {
            completedLevels.add(level);
           jsupdatePercentage(percentage + 0.05263);
          },
        );
      case 4:
        return BasicsJavaFour(
          initialPercentage: percentage,
          updatePercentage: jsupdatePercentage,
          level: level,
          onLevelComplete: (level) {
            completedLevels.add(level);
           jsupdatePercentage(percentage + 0.05263);
          },
        );
      case 5:
        return BasicsJavaFive(
          initialPercentage: percentage,
          updatePercentage: jsupdatePercentage,
          level: level,
          onLevelComplete: (level) {
            completedLevels.add(level);
            jsupdatePercentage(percentage + 0.05263);
          },
        );
      case 6:
        return BasicsJavaSix(
          initialPercentage: percentage,
          updatePercentage: jsupdatePercentage,
          level: level,
          onLevelComplete: (level) {
            completedLevels.add(level);
            jsupdatePercentage(percentage + 0.05263);
          },
        );
      case 7:
        return BasicsJavaSeven(
          initialPercentage: percentage,
          updatePercentage: jsupdatePercentage,
          level: level,
          onLevelComplete: (level) {
            completedLevels.add(level);
           jsupdatePercentage(percentage + 0.05263);
          },
        );
      case 8:
        return BasicsJavaEight(
          initialPercentage: percentage,
          updatePercentage: jsupdatePercentage,
          level: level,
          onLevelComplete: (level) {
            completedLevels.add(level);
            jsupdatePercentage(percentage + 0.05263);
          },
        );
      case 9:
        return BasicsJavaNine(
          initialPercentage: percentage,
          updatePercentage: jsupdatePercentage,
          level: level,
          onLevelComplete: (level) {
            completedLevels.add(level);
            jsupdatePercentage(percentage + 0.05263);
          },
        );
      case 10:
        return BasicsJavaTen(
          initialPercentage: percentage,
          updatePercentage: jsupdatePercentage,
          level: level,
          onLevelComplete: (level) {
            completedLevels.add(level);
           jsupdatePercentage(percentage + 0.05263);
          },
        );
      case 11:
        return BasicsJava11(
          initialPercentage: percentage,
          updatePercentage: jsupdatePercentage,
          level: level,
          onLevelComplete: (level) {
            completedLevels.add(level);
            jsupdatePercentage(percentage + 0.05263);
          },
        );
      case 12:
        return BasicsJava12(
          initialPercentage: percentage,
          updatePercentage: jsupdatePercentage,
          level: level,
          onLevelComplete: (level) {
            completedLevels.add(level);
            jsupdatePercentage(percentage + 0.05263);
          },
        );
      case 13:
        return BasicsJava13(
          initialPercentage: percentage,
          updatePercentage: jsupdatePercentage,
          level: level,
          onLevelComplete: (level) {
            completedLevels.add(level);
            jsupdatePercentage(percentage + 0.05263);
          },
        );
      case 14:
        return BasicsJava14(
          initialPercentage: percentage,
          updatePercentage: jsupdatePercentage,
          level: level,
          onLevelComplete: (level) {
            completedLevels.add(level);
            jsupdatePercentage(percentage + 0.05263);
          },
        );
      case 15:
        return BasicsJava15(
          initialPercentage: percentage,
          updatePercentage: jsupdatePercentage,
          level: level,
          onLevelComplete: (level) {
            completedLevels.add(level);
            jsupdatePercentage(percentage + 0.05263);
          },
        );
      case 16:
        return BasicsJava16(
          initialPercentage: percentage,
          updatePercentage: jsupdatePercentage,
          level: level,
          onLevelComplete: (level) {
            completedLevels.add(level);
            jsupdatePercentage(percentage + 0.05263);
          },
        );
      case 17:
        return BasicsJava17(
          initialPercentage: percentage,
          updatePercentage: jsupdatePercentage,
          level: level,
          onLevelComplete: (level) {
            completedLevels.add(level);
        jsupdatePercentage(percentage + 0.05263);
          },
        );
      case 18:
        return BasicsJava18(
          initialPercentage: percentage,
          updatePercentage: jsupdatePercentage,
          level: level,
          onLevelComplete: (level) {
            completedLevels.add(level);
            jsupdatePercentage(percentage + 0.05263);
          },
        );
      case 19:
        return BasicsJava19(
          initialPercentage: percentage,
          updatePercentage: jsupdatePercentage,
          level: level,
          onLevelComplete: (level) {
            completedLevels.add(level);
           jsupdatePercentage(percentage + 0.05263);
          },
       );
      
      default:
        return Container(); // Return an empty container if level is not found
    }
  }

  List<LevelInfo> levels = [
    LevelInfo(title: 'Introduction to JavaScript', level: 1),
    LevelInfo(title: 'All About Variables', level: 2),
    LevelInfo(title: 'Data Types', level: 3),
    LevelInfo(title: 'Type Casting', level: 4),
    LevelInfo(title: 'Data Structures', level: 5),
    LevelInfo(title: 'Equality Comparisons', level: 6),
    LevelInfo(title: 'Loops and Iterations', level: 7),
    LevelInfo(title: 'Control Flow', level: 8),
    LevelInfo(title: 'Expressions and Operators', level: 9),
    LevelInfo(title: 'Functions', level: 10),
    LevelInfo(title: 'Strict Mode', level: 11),
    LevelInfo(title: 'Using (this) keyword___', level: 12),
    LevelInfo(title: 'Asynchronous JavaScript', level: 13),
    LevelInfo(title: 'Working with APIS', level: 14),
    LevelInfo(title: 'Classes', level: 15),
    LevelInfo(title: 'Javascript Iterators and Generators', level: 16),
    LevelInfo(title: 'Modules in JavaScript', level: 17),
    LevelInfo(title: 'Memory Management', level: 18),
    LevelInfo(title: 'Using Chrome Dev Tools', level: 19),
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
        title: const Text('JavaScript'),
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
                "Are you excited to Learn JavaScript ?",
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