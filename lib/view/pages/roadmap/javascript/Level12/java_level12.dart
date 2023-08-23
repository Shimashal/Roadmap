// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/done_btn.dart';
import 'package:map_app_task/res/components/launch_url.dart';
import 'package:map_app_task/res/components/levelsbtn.dart';
import 'package:map_app_task/utils/routes/route_name.dart';
import 'package:map_app_task/view/pages/roadmap/shared_pref.dart';

class BasicsJava12 extends StatefulWidget {
  final double initialPercentage;
  final void Function(double) updatePercentage;
  final int level;
 final Function(int) onLevelComplete;

  const BasicsJava12({
    Key? key,
    required this.initialPercentage,
    required this.updatePercentage,
    required this.level,
     required this.onLevelComplete,
  }) : super(key: key);

  @override
  State<BasicsJava12> createState() => _BasicsJava12State();
}

class _BasicsJava12State extends State<BasicsJava12> {
  late double percentage;
  bool isButtonDisabled = false;
  Set<String> completedLevels = {};
  bool isLevelComplete = false;
   bool hasVisitedFuncBorrow = false;
  bool hasVisitedExplicitBind = false;
  bool hasVisitedthisMethod = false;
  bool hasVisitedthisFunct = false;
  bool hasVisitedUsingthisAlone = false;
  bool hasVisitedthisInEventHandler = false;
  bool hasVisitedThisinArrowfunc = false;
  
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
      if (section == 'hasVisitedFuncBorrow') {
        hasVisitedFuncBorrow = true;
      } else if (section == 'hasVisitedExplicitBind') {
        hasVisitedExplicitBind = true;
      }
       else if (section == 'hasVisitedthisMethod') {
        hasVisitedthisMethod = true;
      }
       else if (section == 'hasVisitedthisFunct') {
        hasVisitedthisFunct = true;
      }
      else if (section == 'hasVisitedUsingthisAlone') {
        hasVisitedUsingthisAlone = true;
      }
       else if (section == 'hasVisitedthisInEventHandler') {
        hasVisitedthisInEventHandler = true;
      }
       else if (section == 'hasVisitedThisinArrowfunc') {
        hasVisitedThisinArrowfunc = true;
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
                "This Keyword",
                style: Theme.of(context).textTheme.headline3!.copyWith(
                      decoration: TextDecoration.underline,
                    ),
              ),
              const SizedBox(
                height: 01,
              ),
             Align(
                alignment: Alignment.centerLeft,
                child: RichText(
                  textAlign: TextAlign.justify,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text:
                            'In JavaScript, the this keyword is a little different compared to other languages. It refers to an object, but it depends on how or where it is being invoked. It also has some differences between strict mode and non-strict mode.\n',
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
                            text: 'In an object method, this refers to the object\n',
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
                            text: 'Alone, this refers to the global object\n',
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
                            text: 'In a function, this refers to the global object\n',
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
                            text: 'In a function, in strict mode, this is undefined\n',
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
                            text: 'In an event, this refers to the element that received the event\n',
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
                            text: 'Methods like call(), apply(), and bind() can refer this to any object\n',
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
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
                "The JavaScript this Keyword",
                "https://www.w3schools.com/js/js_this.asp",
              ),
              
              const SizedBox(
                height: 10,
              ),
              LaunchUrl.buildLink(
                context,
                "This Keyword",
                "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/this",
              ),
              const SizedBox(
                height: 40,
              ),
               LevelBtn(
                onPress: () {
                Navigator.pushNamed(context, RouteName.functionBorrow);
                _markSectionVisited('hasVisitedFuncBorrow');
                },
                title: 'Function Borrowing',
              ),
              const SizedBox(
                height: 40,
              ),
               LevelBtn(
                onPress: () {
                 Navigator.pushNamed(context, RouteName.explicitBind);
                 _markSectionVisited('hasVisitedExplicitBind');
                },
                title: 'Explicit binding',
                disabled: !hasVisitedFuncBorrow,
              ),
              const SizedBox(
                height: 40,
              ), LevelBtn(
                onPress: () {
                Navigator.pushNamed(context, RouteName.thisMethod);
                _markSectionVisited('hasVisitedthisMethod');
                },
                title: 'this in a method',
                disabled: !hasVisitedExplicitBind,
              ),
              const SizedBox(
                height: 40,
              ), LevelBtn(
                onPress: () {
                 Navigator.pushNamed(context, RouteName.thisFunction);
                 _markSectionVisited('hasVisitedthisFunct');
                },
                title: 'this in a function',
                disabled: !hasVisitedthisMethod,
              ),
              const SizedBox(
                height: 40,
              ), LevelBtn(
                onPress: () {
                 Navigator.pushNamed(context, RouteName.thisAlone);
                 _markSectionVisited('hasVisitedUsingthisAlone');
                },
                title: 'Using this alone',
                disabled: !hasVisitedthisFunct,
              ),
              const SizedBox(
                height: 40,
              ), LevelBtn(
                onPress: () {
                 Navigator.pushNamed(context, RouteName.thisEventHandler);
                 _markSectionVisited('hasVisitedthisInEventHandler');
                },
                title: 'this in event handlers',
                disabled: !hasVisitedUsingthisAlone,
              ),
              const SizedBox(
                height: 40,
              ), LevelBtn(
                onPress: () {
                 Navigator.pushNamed(context, RouteName.arrowFunction);
                 _markSectionVisited('hasVisitedThisinArrowfunc');
                },
                title: 'this in arrow functions',
                disabled: !hasVisitedthisInEventHandler,
              ),
              const SizedBox(
                height: 40,
              ),
              DoneBtn(
                onPress: _updatePercentage,
                title: 'Done',
                disabled: isButtonDisabled || !hasVisitedThisinArrowfunc,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
