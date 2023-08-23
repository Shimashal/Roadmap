// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class FastLane extends StatefulWidget {
  const FastLane({super.key});

  @override
  State<FastLane> createState() => _FastLaneState();
}

class _FastLaneState extends State<FastLane> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
     body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text("Fast lane", style: Theme.of(context).textTheme.headline1),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Fastlane is a third-party tool for automating the development and deployment process for mobile apps, including apps built with Flutter.",
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
                'Fastlane provides a suite of tools for automating tasks such as building, testing, and distributing apps. For example, fastlane can automate the process of building an app, creating a release candidate, and submitting the app to the app store.',
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
                'Visit the following links:',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            LaunchUrl.buildLink(
              context,
              "Fast Lane - CI/CD in Flutter",
              "https://docs.flutter.dev/deployment/cd",
            ),
          ],
        ),
      ),
    );
  }
}
