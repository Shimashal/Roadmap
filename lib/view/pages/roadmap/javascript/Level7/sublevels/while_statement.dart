// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class WhileStatement extends StatefulWidget {
  const WhileStatement({super.key});

  @override
  State<WhileStatement> createState() => _WhileStatementState();
}

class _WhileStatementState extends State<WhileStatement> {

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
            Text("while statement", style: Theme.of(context).textTheme.headline2,
            textAlign: TextAlign.justify,),
            const SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "The while statement creates a loop that executes a specified statement as long as the test condition evaluates to true. The condition is evaluated before executing the statement.",
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
              "While Statement - MDN",
              "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/while",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "The while Loop - CodeGuage",
              "https://www.codeguage.com/courses/js/loops-while-loop",
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
