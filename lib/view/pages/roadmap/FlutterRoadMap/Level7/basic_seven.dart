// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/done_btn.dart';
import 'package:map_app_task/res/components/launch_url.dart';
import 'package:map_app_task/res/components/levelsbtn.dart';
import 'package:map_app_task/utils/routes/route_name.dart';
import 'package:map_app_task/view/pages/roadmap/shared_pref.dart';


class Level7 extends StatefulWidget {
   final double initialPercentage;
  final void Function(double) updatePercentage;
  final int level;
   final Function(int) onLevelComplete;

  const Level7({
    Key? key,
    required this.initialPercentage,
    required this.updatePercentage,
    required this.level,
     required this.onLevelComplete,
  }) : super(key: key);

  @override
  State<Level7> createState() => _Level7State();
}

class _Level7State extends State<Level7> {
  late double percentage;
  bool isButtonDisabled = false;
  Set<String> completedLevels = {};
  bool isLevelComplete = false;
  bool hasVisitedOOP = false;
  bool hasVisitedSolidPrinciple= false;
  bool hasVisitedDP = false;
  bool hasVisitedDependInject = false;

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
      if (section == 'hasVisitedOOP') {
        hasVisitedOOP = true;
      } else if (section == 'hasVisitedSolidPrinciple') {
        hasVisitedSolidPrinciple = true;
      } else if (section == 'hasVisitedDP') {
        hasVisitedDP = true;
      }
      else if (section == 'hasVisitedDependInject') {
        hasVisitedDependInject = true;
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
              "Level: 07",
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
                          'Here are some common design principles that are often followed in Flutter development:\n',
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
                              'Material Design: A design system developed by Google that provides a consistent look and feel across all platforms and devices.\n',
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
                              'Responsiveness: Designing the user interface to work seamlessly on different screen sizes and aspect ratios.\n',
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
                              'User-centered Design: Designing the application with the user’s needs and goals in mind.\n',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ],
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
                              'Simplicity: Designing the user interface to be simple and intuitive, minimizing the number of steps needed to complete a task.\n',
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
                              'Consistency: Maintaining a consistent look and feel throughout the application, using consistent colors, typography, and layout.\n',
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
                              'Accessibility: Making the application usable by people with disabilities, including screen reader support, keyboard accessibility, and high-contrast mode.\n',
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
                              'Performance: Designing the application to be fast and responsive, even on low-end devices.\n',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                    
                    TextSpan(
                      text:
                          'By following these design principles, you can create a user-friendly and visually appealing application that provides a great user experience.',
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
                'Visit the following resource to learn more:',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
             LaunchUrl.buildLink(
            context,
            "Design - Principles",
            "https://docs.flutter.dev/cookbook/design",
          ),
          const SizedBox(
              height: 30,
            ),
            LevelBtn(
              onPress: () {
                Navigator.pushNamed(context, RouteName.OOPDartL7);
                _markSectionVisited('hasVisitedOOP');
              },
              title: 'OOP',
            ),
             const SizedBox(
              height: 20,
            ),
            LevelBtn(
              onPress: () {
                Navigator.pushNamed(context, RouteName.SOLIDPrincipleL7);
                _markSectionVisited('hasVisitedSolidPrinciple');
              },
              title: 'SOLID Principles',
              disabled: !hasVisitedOOP,

            ),
             const SizedBox(
              height: 20,
            ),
            LevelBtn(
              onPress: () {
                Navigator.pushNamed(context, RouteName.DesignPatternsL7);
                _markSectionVisited('hasVisitedDP');
              },
              title: 'Design Patterns',
              disabled: !hasVisitedSolidPrinciple,
            ),
            const SizedBox(
              height: 20,
            ),
             LevelBtn(
              onPress: () {
                Navigator.pushNamed(context, RouteName.DependencyInject);
                _markSectionVisited('hasVisitedDependInject');
              },
              title: 'Dependency Injection',
              disabled: !hasVisitedDP,
            ),
            const SizedBox(
              height: 40,
            ),
           
            DoneBtn(
                onPress: _updatePercentage,
                title: 'Done',
                disabled: isButtonDisabled || !hasVisitedDependInject,
              ),
          ],
        ),
      )),
    );
  }
}
