// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:map_app_task/res/color.dart';
import 'package:map_app_task/res/components/progressprovider.dart';
import 'package:map_app_task/res/components/roadlevel.dart';
import 'package:map_app_task/view/pages/roadmap/Angular/level2_Angular.dart';
import 'package:map_app_task/view/pages/roadmap/level_info.dart';
import 'package:map_app_task/view/pages/roadmap/progress.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../connect_custom.dart';
import 'level1_Angular.dart';
import 'level3_Angular.dart';
import 'level4_Angular.dart';
import 'level5_Angular.dart';

class AngularGuide extends StatefulWidget {
  const AngularGuide({Key? key}) : super(key: key);

  @override
  State<AngularGuide> createState() => _AngularGuideState();
}

class _AngularGuideState extends State<AngularGuide> {
   double percentage = 0.0;
  bool isButtonDisabled = false;
  Set<int> completedLevels = {};
  @override
  void initState() {
    super.initState();
    // Load progress from shared preferences
    angularloadProgress();
  }

    void angularloadProgress() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    double? savedPercentage = prefs.getDouble('AngularGuidePercentage');
    Set<int>? savedCompletedLevels =
        prefs.getStringList('completedAngularLevels')?.map(int.parse).toSet();
    if (savedPercentage != null && savedCompletedLevels != null) {
      setState(() {
        percentage = savedPercentage;
        completedLevels = savedCompletedLevels;
      });
    }
  }
void saveProgressangular() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setDouble('AngularGuidePercentage', percentage);
    await prefs.setStringList(
      'completedAngularLevels',
      completedLevels.map((level) => level.toString()).toList(),
    );
  }

void updatePercentageangular(double newPercentage) {
  setState(() {
    percentage = newPercentage;
    saveProgressangular();
    final progressProvider = Provider.of<ProgressProvider>(context, listen: false);
    progressProvider.updateAngularProgress(newPercentage);
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
      updatePercentageangular(newPercentage);
      markSectionVisited(level); // Mark the section as visited
    }
  }
}

Widget getLevelWidget(int level) {
    switch (level) {
      case 1:
        return AngularLevel1(
          initialPercentage: percentage,
          updatePercentage: updatePercentageangular,
          level: level,
          onLevelComplete: (level) {
            completedLevels.add(level);
             updatePercentageangular(percentage + 0.20);
          },
        );
      case 2:
        return AngularLevel2(
          initialPercentage: percentage,
          updatePercentage: updatePercentageangular,
          level: level,
          onLevelComplete: (level) {
            completedLevels.add(level);
             updatePercentageangular(percentage + 0.20);
          },
        );
      case 3:
        return AngularLevel3(
          initialPercentage: percentage,
          updatePercentage: updatePercentageangular,
          level: level,
          onLevelComplete: (level) {
            completedLevels.add(level);
             updatePercentageangular(percentage + 0.20);
          },
        );
      case 4:
        return AngularLevel4(
          initialPercentage: percentage,
          updatePercentage: updatePercentageangular,
          level: level,
          onLevelComplete: (level) {
            completedLevels.add(level);
             updatePercentageangular(percentage + 0.20);
          },
        );
      case 5:
        return AngularLevel5(
          initialPercentage: percentage,
          updatePercentage: updatePercentageangular,
          level: level,
          onLevelComplete: (level) {
            completedLevels.add(level);
             updatePercentageangular(percentage + 0.20);
          },
        );
    
      default:
        return Container(
          color: Colors.blue,
        
        ); // Return an empty container if level is not found
    }
  }

  
  List<LevelInfo> levels = [
    LevelInfo(title: 'CLI Tools', level: 1),
    LevelInfo(title: 'Components', level: 2),
    LevelInfo(title: 'Rendering', level: 3),
    LevelInfo(title: 'Hooks', level: 4),
    LevelInfo(title: 'Routers', level: 5),
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
                    style: const TextStyle(
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
        title: const Text('Angular'),
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
                numSteps: 15,
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Let's Start!",
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                "Are you excited to become a Angular developer?",
                style: Theme.of(context).textTheme.subtitle1,
              ),
              const SizedBox(
                height: 20,
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