// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class VarKeyword extends StatefulWidget {
  const VarKeyword({super.key});

  @override
  State<VarKeyword> createState() => _VarKeywordState();
}

class _VarKeywordState extends State<VarKeyword> {

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
            Text("[var] keyword", style: Theme.of(context).textTheme.headline2,
            textAlign: TextAlign.justify,),
            const SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "The var statement declares a function-scoped or globally-scoped variable, optionally initializing it to a value.",
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
              "var keyword - MDN",
              "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/var",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "JavaScript Variables",
              "https://javascript.info/variables",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "JavaScript Variables - W3Schools",
              "https://www.w3schools.com/js/js_variables.asp",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "Declaring Variables without Var, Let, Const - What Would Happen?",
              "https://www.youtube.com/watch?v=6UAKBYpUC-Y&ab_channel=CodeTour",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "How to declare variables in different ways in JavaScript?",
              "https://www.geeksforgeeks.org/how-to-declare-variables-in-different-ways-in-javascript/",
            ),
             
          ],

        ),
      ),
    );
  }
}
