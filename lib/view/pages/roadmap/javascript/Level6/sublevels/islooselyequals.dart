// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class IsLooselyEquals extends StatefulWidget {
  const IsLooselyEquals({super.key});

  @override
  State<IsLooselyEquals> createState() => _IsLooselyEqualsState();
}

class _IsLooselyEqualsState extends State<IsLooselyEquals> {

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
            Text("isLooselyEqual", style: Theme.of(context).textTheme.headline2,
            textAlign: TextAlign.justify,),
            const SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "isLooselyEqual checks whether its two operands are equal, returning a Boolean result. It attempts to convert and compare operands that are of different types.",
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
              "Loosely Equality (==) Operator",
              "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Equality",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "Comparison - javascript.info",
              "https://javascript.info/comparison",
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
