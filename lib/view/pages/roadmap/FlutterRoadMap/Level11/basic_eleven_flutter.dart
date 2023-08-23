// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/done_btn.dart';
import 'package:map_app_task/res/components/launch_url.dart';
import 'package:map_app_task/res/components/levelsbtn.dart';
import 'package:map_app_task/utils/routes/route_name.dart';
import 'package:map_app_task/view/pages/roadmap/shared_pref.dart';


class Level11 extends StatefulWidget {
  final double initialPercentage;
  final void Function(double) updatePercentage;
  final int level;
  final Function(int) onLevelComplete;

  const Level11({
    Key? key,
    required this.initialPercentage,
    required this.updatePercentage,
    required this.level,
    required this.onLevelComplete,
  }) : super(key: key);

  @override
  State<Level11> createState() => _Level11State();
}

class _Level11State extends State<Level11> {
  late double percentage;
  bool isButtonDisabled = false;
  Set<String> completedLevels = {};
  bool isLevelComplete = false;
  bool hasVisitedCoreLib = false;
  bool hasVisitedStreams = false;
  bool hasVisitedFutures = false;
  bool hasVisitedLists = false;
  bool hasVisitedCollections = false;
  bool hasVisitedLambdas = false;
  bool hasVisitedFProgram = false;
  bool hasVisitedIsoltes = false;
  bool hasVisitedAysnc = false;
 
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
      if (section == 'hasVisitedCoreLib') {
        hasVisitedCoreLib = true;
      } else if (section == 'hasVisitedStreams') {
        hasVisitedStreams = true;
      } else if (section == 'hasVisitedFutures') {
        hasVisitedFutures = true;
      }
      else if (section == 'hasVisitedLists') {
        hasVisitedLists = true;
      } else if (section == 'hasVisitedCollections') {
        hasVisitedCollections = true;
      }
      else if (section == 'hasVisitedLambdas') {
        hasVisitedLambdas = true;
      } else if (section == 'hasVisitedFProgram') {
        hasVisitedFProgram = true;
      }
      else if (section == 'hasVisitedIsoltes') {
        hasVisitedIsoltes = true;
      } else if (section == 'hasVisitedAysnc') {
        hasVisitedAysnc = true;
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
              "Level: 11",
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
                          'Here are some advanced concepts in Dart that are commonly used in Flutter development:\n',
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
                          text: 'Generics: allows creating reusable code by abstracting over types\n',
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
                          text: 'Async/Await: simplifies asynchronous programming by allowing to wait for a Future to complete in a clean, readable way.\n',
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
                          text: 'Mixins: lets classes inherit behaviors from multiple mixin classes\n',
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
                          text: 'Streams: provide a way to receive a continuous sequence of events, like data from a server or user events.\n',
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
                          text: 'Abstract Classes: provide a base class that can be extended to create multiple concrete implementations.\n',
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
                          text: 'Isolates: allow running Dart code in separate threads with communication through message passing.\n',
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
                          text: 'Futures: represent a value that will be available at some point in the future.\n',
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
                          text: 'Null-aware operators (??, ?.): provide a concise way to handle null values.\n',
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
                          text: 'Collection literals: provide concise syntax for creating collections.\n',
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
                          text: 'Extension Methods: allow adding methods to existing classes, even if you don’t have access to their source code.\n',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 5,
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
              "Tutorials - Dart",
              "https://dart.dev/tutorials",
            ),
            const SizedBox(
              height: 20,
            ),
            LevelBtn(
              onPress: () {
                Navigator.pushNamed(context, RouteName.CoreLibrary);
                _markSectionVisited('hasVisitedCoreLib');
              },
              title: 'Core Libraries',
            ),
            const SizedBox(
              height: 20,
            ),
            LevelBtn(
              onPress: () {
                Navigator.pushNamed(context, RouteName.StreamsAdvance);
                _markSectionVisited('hasVisitedStreams');
              },
              title: 'Streams',
              disabled: !hasVisitedCoreLib,
            ),
            const SizedBox(
              height: 20,
            ),
            LevelBtn(
              onPress: () {
                Navigator.pushNamed(context, RouteName.Futures_Advance);
                _markSectionVisited('hasVisitedFutures');
              },
              title: 'Futures',
              disabled: !hasVisitedStreams,
            ),
            const SizedBox(
              height: 20,
            ),
            LevelBtn(
              onPress: () {
                Navigator.pushNamed(context, RouteName.Lists_Advance);
                _markSectionVisited('hasVisitedLists');
              },
              title: 'Lists',
              disabled: !hasVisitedFutures,
            ),
             const SizedBox(
              height: 20,
            ),
            LevelBtn(
              onPress: () {
                Navigator.pushNamed(context, RouteName.Collections_Advance);
                _markSectionVisited('hasVisitedCollections');
              },
              title: 'Collections',
              disabled: !hasVisitedLists,
            ),
             const SizedBox(
              height: 20,
            ),
            LevelBtn(
              onPress: () {
                Navigator.pushNamed(context, RouteName.Lambdas_Advance);
                _markSectionVisited('hasVisitedLambdas');
              },
              title: 'Lambdas',
              disabled: !hasVisitedCollections,
            ),
             const SizedBox(
              height: 20,
            ),
            LevelBtn(
              onPress: () {
                Navigator.pushNamed(context, RouteName.FunctionalProg);
                _markSectionVisited('hasVisitedFProgram');
              },
              title: 'Functional Programming',
              disabled: !hasVisitedLambdas,
            ),
             const SizedBox(
              height: 20,
            ),
            LevelBtn(
              onPress: () {
                Navigator.pushNamed(context, RouteName.IsoLates);
                _markSectionVisited('hasVisitedIsoltes');
              },
              title: 'Isolates',
              disabled: !hasVisitedFProgram,
            ),
             const SizedBox(
              height: 20,
            ),
            LevelBtn(
              onPress: () {
                Navigator.pushNamed(context, RouteName.asyncawait);
                _markSectionVisited('hasVisitedAysnc');
              },
              title: 'Async / Await',
              disabled: !hasVisitedIsoltes,
            ),
            const SizedBox(
              height: 40,
            ),
            DoneBtn(
              onPress: _updatePercentage,
              title: 'Done',
              disabled: isButtonDisabled || !hasVisitedAysnc,
            ),
          ],
        ),
      )),
    );
  }
}
