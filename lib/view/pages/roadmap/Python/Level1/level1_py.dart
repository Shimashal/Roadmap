// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/done_btn.dart';
import 'package:map_app_task/res/components/launch_url.dart';
import 'package:map_app_task/view/pages/roadmap/shared_pref.dart';

class PythonLevel1 extends StatefulWidget {
  final double initialPercentage;
  final void Function(double) updatePercentage;
  final int level;
  final Function(int) onLevelComplete;

  const PythonLevel1({
    Key? key,
    required this.initialPercentage,
    required this.updatePercentage,
    required this.level,
    required this.onLevelComplete,
  }) : super(key: key);

  @override
  State<PythonLevel1> createState() => _PythonLevel1State();
}

class _PythonLevel1State extends State<PythonLevel1> {
  late double percentage;
  bool isButtonDisabled = false;
  Set<String> completedLevels = {};
  bool isLevelComplete = false;

//  @override
//   void initState() {
//     super.initState();
//     percentage = widget.initialPercentage;
//      if (completedLevels.contains(widget.level)) {
//     setState(() {
//       isButtonDisabled = true;
//     });
//   }
//   SharedPref.init().then((_) {
//       setState(() {
//         isButtonDisabled = SharedPref.getBool('isButtonDisabled${widget.level}');
//       });
//     });
//   }

//change
  @override
  void initState() {
    super.initState();
    final levelKey = 'PythonLevel${widget.level}'; // Unique key for each level
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
    final levelKey = 'PythonLevel${widget.level}'; // Unique key for each level
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

  // void _updatePercentage() async {
  //   if (!isButtonDisabled) {
  //     print('Updating percentage for Level ${widget.level}');
  //     setState(() {
  //       isButtonDisabled = true;
  //       completedLevels.add(widget.level);
  //       isLevelComplete = true;
  //     });

  //     double newPercentage = percentage;
  //     setState(() {
  //       percentage = newPercentage;
  //     });

  //     widget.updatePercentage(percentage);

  //     await SharedPref.setBool('isButtonDisabled${widget.level}', true);
  //     widget.onLevelComplete(widget.level);

  //     print(
  //         'Percentage updated for Level ${widget.level}: ${newPercentage.toStringAsFixed(2)}%');
  //   }
  // }

  //change
  

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
                "Learn Basics",
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
                  "Python is a high-level, interpreted, general-purpose programming language. Its design philosophy emphasizes code readability with the use of significant indentation. Python is dynamically-typed and garbage-collected.",
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
                  "Visit the following resources to learn more:",
                  style: Theme.of(context).textTheme.subtitle1,
                  textAlign: TextAlign.justify,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              LaunchUrl.buildLink(
                context,
                "Python",
                "https://www.kaggle.com/learn/python",
              ),
              const SizedBox(
                height: 10,
              ),
              LaunchUrl.buildLink(
                context,
                "W3Schools - Python Tutorial",
                "https://www.w3schools.com/python/",
              ),
              const SizedBox(
                height: 40,
              ),
              DoneBtn(
                onPress: _updatePercentage,
                title: 'Done',
                disabled: isButtonDisabled,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
