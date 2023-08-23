// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class LabeledState extends StatefulWidget {
  const LabeledState({super.key});

  @override
  State<LabeledState> createState() => _LabeledStateState();
}

class _LabeledStateState extends State<LabeledState> {

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
            Text("Labeled Statements", style: Theme.of(context).textTheme.headline2,
            textAlign: TextAlign.justify,),
            const SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "JavaScript label statements are used to prefix a label to an identifier. It can be used with break and continue statement to control the flow more precisely.A label is simply an identifier followed by a colon(:) that is applied to a block of code.",
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
              "JavaScript MDN Docs",
             "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/label",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "Tutorialspoint – JavaScript Tutorial",
              "https://www.tutorialspoint.com/What-are-label-statements-in-JavaScript",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "Labels for break/continue",
              "https://javascript.info/while-for#labels-for-break-continue",
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
