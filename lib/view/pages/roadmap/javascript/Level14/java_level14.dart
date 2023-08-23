// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/done_btn.dart';
import 'package:map_app_task/res/components/launch_url.dart';
import 'package:map_app_task/res/components/levelsbtn.dart';
import 'package:map_app_task/utils/routes/route_name.dart';
import 'package:map_app_task/view/pages/roadmap/shared_pref.dart';

class BasicsJava14 extends StatefulWidget {
  final double initialPercentage;
  final void Function(double) updatePercentage;
  final int level;
  final Function(int) onLevelComplete;

  const BasicsJava14({
    Key? key,
    required this.initialPercentage,
    required this.updatePercentage,
    required this.level,
     required this.onLevelComplete,
  }) : super(key: key);

  @override
  State<BasicsJava14> createState() => _BasicsJava14State();
}

class _BasicsJava14State extends State<BasicsJava14> {
  late double percentage;
  bool isButtonDisabled = false;
  Set<String> completedLevels = {};
  bool isLevelComplete = false;
  bool hasVisitedXMLHTTPRequest = false;
  bool hasVisitedFetch = false;

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
      if (section == 'hasVisitedXMLHTTPRequest') {
        hasVisitedXMLHTTPRequest = true;
      } else if (section == 'hasVisitedFetch') {
        hasVisitedFetch = true;
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
                "Working with APIS",
                style: Theme.of(context).textTheme.headline3!.copyWith(
                      decoration: TextDecoration.underline,
                    ),
              ),
              const SizedBox(
                height: 01,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Asynchronous programming is a technique that enables your program to start a potentially long-running task and still be able to be responsive to other events while that task runs, rather than having to wait until that task has finished. Once that task has finished, your program is presented with the result.",
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
                "Asynchronous JavaScript - MDN",
                "https://developer.mozilla.org/en-US/docs/Learn/JavaScript/Asynchronous/Introducing",
              ),
              const SizedBox(
                height: 30,
              ),
              LevelBtn(
                onPress: () {
                Navigator.pushNamed(context, RouteName.xmlHTTPReq);
               _markSectionVisited('hasVisitedXMLHTTPRequest');
                               },
                title: 'XMLHTTPRequest',
              ),
              const SizedBox(
                height: 40,
              ),
              LevelBtn(
                onPress: () {
                Navigator.pushNamed(context, RouteName.fetchAPi);
                _markSectionVisited('hasVisitedFetch');
                },
                title: 'Fetch',
                disabled: !hasVisitedXMLHTTPRequest,
              ),
             
              const SizedBox(
                height: 40,
              ),
              DoneBtn(
                onPress: _updatePercentage,
                title: 'Done',
                disabled: isButtonDisabled || !hasVisitedFetch,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
