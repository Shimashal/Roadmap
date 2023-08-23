// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class ForLoopState extends StatefulWidget {
  const ForLoopState({super.key});

  @override
  State<ForLoopState> createState() => _ForLoopStateState();
}

class _ForLoopStateState extends State<ForLoopState> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text("The for loop", style: Theme.of(context).textTheme.headline2,
            textAlign: TextAlign.justify,),
            const SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "The for loop is a standard control-flow construct in many programming languages, including JavaScript. It’s commonly used to iterate over given sequences or iterate a known number of times and execute a piece of code for each iteration.",
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
            LaunchUrl.buildLink(
              context,
              "JavaScript for Loop - CodeGuage",
              "https://www.codeguage.com/courses/js/loops-for-loop",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "The for Loop - MDN",
              "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/for",
            ),
            const SizedBox(
              height: 10,
            ),
            
          ],

        ),
      ),
    );
  }
}
