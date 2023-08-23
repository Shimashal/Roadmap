// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';
import 'package:map_app_task/res/components/levelsbtn.dart';
import 'package:map_app_task/utils/routes/route_name.dart';

class ConditionalStatement extends StatefulWidget {
  const ConditionalStatement({super.key});

  @override
  State<ConditionalStatement> createState() => _ConditionalStatementState();
}

class _ConditionalStatementState extends State<ConditionalStatement> {

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
            Text("Conditional statements", style: Theme.of(context).textTheme.headline2,
            textAlign: TextAlign.justify,),
            const SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "When you write code, you often want to perform different actions for different decisions. You can use conditional statements in your code to do this. In JavaScript, we have three conditional statements: if, if...else, and switch.",
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
              "Making decisions in your code — conditionals",
              "https://developer.mozilla.org/en-US/docs/Learn/JavaScript/Building_blocks/conditionals",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "Conditional branching: if, ?",
              "https://javascript.info/ifelse",
            ),
             const SizedBox(
                height: 30,
              ),
              LevelBtn(
                onPress: () {
                 Navigator.pushNamed(context, RouteName.ifElseStatement);
                },
                title: 'If...else',
              ),
              const SizedBox(
                height: 40,
              ),
              LevelBtn(
                onPress: () {
                Navigator.pushNamed(context, RouteName.switchCase);
                },
                title: 'Switch',
              ),
              const SizedBox(
                height: 40,
              ),
             
          ],

        ),
      ),
    );
  }
}
