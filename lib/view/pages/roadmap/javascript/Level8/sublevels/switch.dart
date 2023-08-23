// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class SwitchCase extends StatefulWidget {
  const SwitchCase({super.key});

  @override
  State<SwitchCase> createState() => _SwitchCaseState();
}

class _SwitchCaseState extends State<SwitchCase> {
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
            children: [
              Text(
                "Switch Case",
                style: Theme.of(context).textTheme.headline2,
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "The switch statement evaluates an expression, matching the expression’s value against a series of case clauses, and executes statements after the first case clause with a matching value, until a break statement is encountered. The default clause of a switch statement will be jumped to if no case matches the expression’s value.",
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
                  "Example",
                  style: Theme.of(context).textTheme.headline3,
                  textAlign: TextAlign.justify,
                ),
              ),
              const Card(
                elevation: 4,
                child: Padding(
                  padding: EdgeInsets.all(11.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Example:",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "switch (expression) {",
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                      Text(
                        "  case value1:",
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                      Text(
                        "    //Statements executed when the result of expression matches value1",
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                      Text(
                        "    break;",
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                      Text(
                        "  case value2:",
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                      Text(
                        "    //Statements executed when the result of expression matches value2",
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                      Text(
                        "    break;",
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                      // Add more case statements as needed
                      Text(
                        "  default:",
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                      Text(
                        "    //Statements executed when none of the values match the value of the expression",
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                      Text(
                        "    break;",
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                      Text(
                        "}",
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
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
                height: 5,
              ),
              LaunchUrl.buildLink(
                context,
                "switch - MDN",
                "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/switch",
              ),
              const SizedBox(
                height: 10,
              ),
              LaunchUrl.buildLink(
                context,
                "The switch Statement: Why, What and How - CodeGuage",
                "https://www.codeguage.com/courses/js/conditions-switch",
              ),
              const SizedBox(
                height: 10,
              ),
              LaunchUrl.buildLink(
                context,
                "The switch statement - javascript.info",
                "https://javascript.info/switch",
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
