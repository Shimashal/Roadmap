  // ignore_for_file: deprecated_member_use

  import 'package:flutter/material.dart';
  import 'package:map_app_task/res/components/done_btn.dart';
  import 'package:map_app_task/res/components/launch_url.dart';
  import 'package:map_app_task/res/components/levelsbtn.dart';
  import 'package:map_app_task/utils/routes/route_name.dart';
  import 'package:map_app_task/view/pages/roadmap/shared_pref.dart';

  class BasicsDart extends StatefulWidget {
    final double initialPercentage;
    final void Function(double) updatePercentage;
    final Function(int) onLevelComplete;
    final int level;

    const BasicsDart({
      Key? key,
      required this.initialPercentage,
      required this.updatePercentage,
      required this.onLevelComplete,
      required this.level,
    }) : super(key: key);

    @override
    State<BasicsDart> createState() => _BasicsDartState();
  }

  class _BasicsDartState extends State<BasicsDart> {
    late double percentage;
    bool isButtonDisabled = false;
    Set<String> completedLevels = {};
    bool isLevelComplete = false;
    bool hasVisitedDartPad = false;
    bool hasVisitedVariables = false;
    bool hasVisitedBuiltInTypes = false;

       
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
      if (section == 'hasVisitedDartPad') {
        hasVisitedDartPad = true;
      } else if (section == 'hasVisitedVariables') {
        hasVisitedVariables = true;
      } else if (section == 'hasVisitedBuiltInTypes') {
        hasVisitedBuiltInTypes = true;
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
                  height: 20,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Dart is an open-source, general-purpose, object-oriented programming language with C-style syntax developed by Google in 2011. The purpose of Dart programming is to create frontend user interfaces for web and mobile apps. It can also be used to build server and desktop applications.",
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
                  "Dart Overview",
                  "https://dart.dev/overview",
                ),
                const SizedBox(
                  height: 10,
                ),
                LaunchUrl.buildLink(
                  context,
                  "What is Dart Programming?",
                  "https://www.javatpoint.com/flutter-dart-programming",
                ),
                const SizedBox(
                  height: 10,
                ),
                LaunchUrl.buildLink(
                  context,
                  "What is Dart?",
                  "https://www.youtube.com/watch?v=sOSd6G1qXoY&ab_channel=ZeroToMastery",
                ),
                const SizedBox(
                  height: 30,
                ),
                LevelBtn(
                  onPress: () {
                    Navigator.pushNamed(context, RouteName.DartpadScreen);
                    _markSectionVisited('hasVisitedDartPad');
                  },
                  title: 'Dart Pad',
                ),
                const SizedBox(
                  height: 40,
                ),
                LevelBtn(
                  onPress: () {
                    Navigator.pushNamed(context, RouteName.VariablesScreen);
                    _markSectionVisited('hasVisitedVariables');
                  },
                  title: 'Variables',
                  disabled: !hasVisitedDartPad,
                ),
                const SizedBox(
                  height: 40,
                ),
                LevelBtn(
                  onPress: () {
                    Navigator.pushNamed(context, RouteName.BuiltinTypesScreen);
                    _markSectionVisited('hasVisitedBuiltInTypes');
                  },
                  title: 'Built-in Types',
                  disabled: !hasVisitedVariables,
                ),
                const SizedBox(
                  height: 40,
                ),
                DoneBtn(
                  onPress: _updatePercentage,
                  title: 'Done',
                  disabled: isButtonDisabled || !hasVisitedBuiltInTypes,
                ),
              ],
            ),
          ),
        ),
      );
    }
  }
