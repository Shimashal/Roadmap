// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class IFelse extends StatefulWidget {
  const IFelse({super.key});

  @override
  State<IFelse> createState() => _IFelseState();
}

class _IFelseState extends State<IFelse> {
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
            Text(
              "If else",
              style: Theme.of(context).textTheme.headline2,
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "The if statement executes a statement if a specified condition is truthy. If the condition is falsy, another statement in the optional else clause will be executed.",
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
            // Message Box Card
            const Card(
              elevation: 4,
              child: Padding(
                padding: EdgeInsets.all(25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    Text(
                      "if (condition) {",
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                    Text(
                      "  statement1;",
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                    Text(
                      "} else {",
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                    Text(
                      "  statement2;",
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
            LaunchUrl.buildLink(
              context,
              "if…else - MDN docs",
              "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/if...else",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "Conditional branching: if, ? - javascript.info",
              "https://javascript.info/ifelse",
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
