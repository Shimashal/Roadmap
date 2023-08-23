// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/done_btn.dart';
import 'package:map_app_task/res/components/launch_url.dart';
import 'package:map_app_task/view/pages/roadmap/shared_pref.dart';

class ReactLevel5 extends StatefulWidget {
  final double initialPercentage;
  final void Function(double) updatePercentage;
  final int level;
  final Function(int) onLevelComplete;

  const ReactLevel5({
    Key? key,
    required this.initialPercentage,
    required this.updatePercentage,
    required this.level,
    required this.onLevelComplete,
  }) : super(key: key);

  @override
  State<ReactLevel5> createState() => _ReactLevel5State();
}

class _ReactLevel5State extends State<ReactLevel5> {
  late double percentage;
  bool isButtonDisabled = false;
  Set<int> completedLevels = {};
  bool isLevelComplete = false;

  
 @override
  void initState() {
    super.initState();
    percentage = widget.initialPercentage;
     if (completedLevels.contains(19)) {
    setState(() {
      isButtonDisabled = true;
    });
  }
  SharedPref.init().then((_) {
      setState(() {
        isButtonDisabled = SharedPref.getBool('isButtonDisabled${widget.level}');
      });
    });
  }


  void _updatePercentage() async {
    if (!isButtonDisabled) {
      setState(() {
        // percentage += 0.05;
        isButtonDisabled = true;
        completedLevels.add(widget.level);
        isLevelComplete = true;
      });
      widget.updatePercentage(percentage); // It Passes the updated percentage to the parent widget

      await SharedPref.setBool('isButtonDisabled${widget.level}', true); // Save the disabled state in SharedPreferences
    widget.onLevelComplete(widget.level);
    }
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
                "Routing",
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
                  "Routing is an essential concept in Single Page Applications (SPA). When your application is divided into separated logical sections, and all of them are under their own URL, your users can easily share links among each other.",
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
                "React Router 6 – Tutorial for Beginners.",
                "https://www.youtube.com/watch?v=59IXY5IDrBA&ab_channel=freeCodeCamp.org",
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
