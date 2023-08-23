// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class LetKeyword extends StatefulWidget {
  const LetKeyword({super.key});

  @override
  State<LetKeyword> createState() => _LetKeywordState();
}

class _LetKeywordState extends State<LetKeyword> {

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
            Text("[let] keyword", style: Theme.of(context).textTheme.headline2,
            textAlign: TextAlign.justify,),
            const SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "The let declaration declares a block-scoped local variable, optionally initializing it to a value.",
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
              "let keyword - MDN Docs",
              "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/let",
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
              "How to declare variables in different ways in JavaScript?",
              "https://www.geeksforgeeks.org/how-to-declare-variables-in-different-ways-in-javascript/",
            ),
            
             
          ],

        ),
      ),
    );
  }
}
