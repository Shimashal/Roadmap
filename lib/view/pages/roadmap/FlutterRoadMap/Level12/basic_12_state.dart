// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/done_btn.dart';
import 'package:map_app_task/res/components/launch_url.dart';
import 'package:map_app_task/res/components/levelsbtn.dart';
import 'package:map_app_task/utils/routes/route_name.dart';
import 'package:map_app_task/view/pages/roadmap/shared_pref.dart';

class Level12 extends StatefulWidget {
  final double initialPercentage;
  final void Function(double) updatePercentage;
  final int level;
  final Function(int) onLevelComplete;

  const Level12({
    Key? key,
    required this.initialPercentage,
    required this.updatePercentage,
    required this.level,
    required this.onLevelComplete,
  }) : super(key: key);

  @override
  State<Level12> createState() => _Level12State();
}

class _Level12State extends State<Level12> {
  late double percentage;
  bool isButtonDisabled = false;
  Set<String> completedLevels = {};
  bool isLevelComplete = false;
  bool hasVisitedRedux = false;
  bool hasVisitedValueNotify = false;
  bool hasVisitedChangeNotify = false;
  bool hasVisitedRiverpod = false;
  bool hasVisitedBloc = false;
  bool hasVisitedProvider = false;


 
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
      if (section == 'hasVisitedRedux') {
        hasVisitedRedux = true;
      } else if (section == 'hasVisitedValueNotify') {
        hasVisitedValueNotify = true;
      } else if (section == 'hasVisitedChangeNotify') {
        hasVisitedChangeNotify = true;
      }
      else if (section == 'hasVisitedRiverpod') {
        hasVisitedRiverpod = true;
      } else if (section == 'hasVisitedBloc') {
        hasVisitedBloc = true;
      }
      else if (section == 'hasVisitedProvider') {
        hasVisitedProvider = true;
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
              "Level: 12",
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
                          'State management in Flutter refers to the process of managing and updating the data or state of a Flutter application. In Flutter, the state of the widgets can change dynamically, for example, when a user interacts with the application. The state management techniques in Flutter include:\n',
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
                              'ScopedModel: a third-party state management solution that uses a centralized model to manage the state.\n',
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
                              'Provider: a lightweight solution that allows widgets to access the state with minimal boilerplate code.\n',
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
                              'BLoC (Business Logic Component): a state management technique that uses streams and reactive programming to manage the state.\n',
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
                              'Redux: a state management solution inspired by the Redux library in React.\n',
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
                              'InheritedWidget: a built-in widget that allows the state to be passed down the widget tree.\n',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        TextSpan(
                          text:
                              'The choice of state management technique depends on the complexity and size of the project. For smaller projects, Provider or InheritedWidget may be sufficient, while larger projects may require a more robust solution like ScopedModel or Redux.\n',
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
              "State management in Flutter",
              "https://docs.flutter.dev/data-and-backend/state-mgmt",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "Intro to State Management",
              "https://docs.flutter.dev/data-and-backend/state-mgmt/intro",
            ),
            const SizedBox(
              height: 20,
            ),
            LevelBtn(
              onPress: () {
                Navigator.pushNamed(context, RouteName.ReduxStates);
                _markSectionVisited('hasVisitedRedux');
              },
              title: 'ReduX',
              
            ),
            const SizedBox(
              height: 20,
            ),
            LevelBtn(
              onPress: () {
                Navigator.pushNamed(context, RouteName.Value_Notify_States);
                _markSectionVisited('hasVisitedValueNotify');
              },
              title: 'Value Notifier',
              disabled: !hasVisitedRedux,
            ),
            const SizedBox(
              height: 20,
            ),
            LevelBtn(
              onPress: () {
                Navigator.pushNamed(context, RouteName.Change_Notify);
                _markSectionVisited('hasVisitedChangeNotify');
              },
              title: 'Change Notifier',
              disabled: !hasVisitedValueNotify,
            ),
            const SizedBox(
              height: 20,
            ),
            LevelBtn(
              onPress: () {
                Navigator.pushNamed(context, RouteName.Riverpod_State);
                _markSectionVisited('hasVisitedRiverpod');
              },
              title: 'Riverpod',
              disabled: !hasVisitedChangeNotify,
            ),
            const SizedBox(
              height: 20,
            ),
            LevelBtn(
              onPress: () {
                Navigator.pushNamed(context, RouteName.Bloc_State);
                _markSectionVisited('hasVisitedBloc');

              },
              title: 'BloC',
              disabled: !hasVisitedRiverpod,
            ),
            const SizedBox(
              height: 20,
            ),
            LevelBtn(
              onPress: () {
                Navigator.pushNamed(context, RouteName.Provider_State);
                _markSectionVisited('hasVisitedProvider');
              },
              title: 'Provider',
              disabled: !hasVisitedBloc,
            ),
            const SizedBox(
              height: 40,
            ),
            DoneBtn(
              onPress: _updatePercentage,
              title: 'Done',
              disabled: isButtonDisabled || !hasVisitedProvider,
            ),
          ],
        ),
      )),
    );
  }
}
