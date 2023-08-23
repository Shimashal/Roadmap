// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class ForOFState extends StatefulWidget {
  const ForOFState({super.key});

  @override
  State<ForOFState> createState() => _ForOFStateState();
}

class _ForOFStateState extends State<ForOFState> {

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
            Text("for…of statement", style: Theme.of(context).textTheme.headline2,
            textAlign: TextAlign.justify,),
            const SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "The for…of statement executes a loop that operates on a sequence of values sourced from an iterable object. Iterable objects include instances of built-ins such as Array, String, TypedArray, Map, Set, NodeList (and other DOM collections), and the arguments object, generators produced by generator functions, and user-defined iterables.",
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
              "for…of statement - MDN",
              "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/for...of",
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
