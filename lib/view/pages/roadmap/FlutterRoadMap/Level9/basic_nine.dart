// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/done_btn.dart';
import 'package:map_app_task/res/components/launch_url.dart';
import 'package:map_app_task/res/components/levelsbtn.dart';
import 'package:map_app_task/utils/routes/route_name.dart';
import 'package:map_app_task/view/pages/roadmap/shared_pref.dart';


class Level9 extends StatefulWidget {
  final double initialPercentage;
  final void Function(double) updatePercentage;
  final int level;
  final Function(int) onLevelComplete;

  const Level9({
    Key? key,
    required this.initialPercentage,
    required this.updatePercentage,
    required this.level,
    required this.onLevelComplete,
  }) : super(key: key);

  @override
  State<Level9> createState() => _Level9State();
}

class _Level9State extends State<Level9> {
  late double percentage;
  bool isButtonDisabled = false;
  Set<String> completedLevels = {};
  bool isLevelComplete = false;
   bool hasVisitedWebSocket= false;
  bool hasVisitedGraphQl = false;
  bool hasVisitedRestfulAPI = false;
  bool hasVisitedJsonSerialize = false;

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
      if (section == 'hasVisitedWebSocket') {
        hasVisitedWebSocket = true;
      } else if (section == 'hasVisitedGraphQl') {
        hasVisitedGraphQl = true;
      } else if (section == 'hasVisitedRestfulAPI') {
        hasVisitedRestfulAPI = true;
      }
      else if (section == 'hasVisitedJsonSerialize') {
        hasVisitedJsonSerialize = true;
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
              "Level: 09",
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
                "Working with APIs in Flutter involves making HTTP requests to a server and processing the responses. Flutter provides a number of libraries for making HTTP requests, including dart:io and http.",
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
                "The http library is a popular choice for making HTTP requests in Flutter, as it is easy to use and provides support for HTTP methods such as GET, POST, PUT, DELETE, and more.",
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
                'Visit the following resource to learn more:',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
             LaunchUrl.buildLink(
            context,
            "Using Google APIs",
            "https://dart.dev/guides/google-apis",
          ),
            const SizedBox(
              height: 20,
            ),
           LaunchUrl.buildLink(
            context,
            "How to work with APIs in Flutter?",
            "https://www.youtube.com/watch?v=uVo7HDWDUEQ",
          ),
        
          const SizedBox(
              height: 30,
            ),
            LevelBtn(
              onPress: () {
                Navigator.pushNamed(context, RouteName.Web_SocketL9);
                _markSectionVisited('hasVisitedWebSocket');
              },
              title: 'Web Sockets',
            ),
             const SizedBox(
              height: 20,
            ),
            LevelBtn(
              onPress: () {
                Navigator.pushNamed(context, RouteName.Graph_QL);
                _markSectionVisited('hasVisitedGraphQl');
              },
              title: 'GraphQL',
              disabled: !hasVisitedWebSocket,
            ),
             const SizedBox(
              height: 20,
            ),
            LevelBtn(
              onPress: () {
                Navigator.pushNamed(context, RouteName.RestAPiL9);
                _markSectionVisited('hasVisitedRestfulAPI');
              },
              title: 'RESTful APIs',
              disabled: !hasVisitedGraphQl,
            ),
             const SizedBox(
              height: 20,
            ),
            LevelBtn(
              onPress: () {
                Navigator.pushNamed(context, RouteName.JSONL9);
                _markSectionVisited('hasVisitedJsonSerialize');
              },
              title: 'JSON Serialize/Deserialize',
              disabled: !hasVisitedRestfulAPI,
            ),
          
            const SizedBox(
              height: 40,
            ),
           
            DoneBtn(
                onPress: _updatePercentage,
                title: 'Done',
                disabled: isButtonDisabled || !hasVisitedJsonSerialize,
              ),
          ],
        ),
      )),
    );
  }
}
