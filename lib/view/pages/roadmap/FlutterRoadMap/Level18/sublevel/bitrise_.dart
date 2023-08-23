// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class Bitrise extends StatefulWidget {
  const Bitrise({super.key});

  @override
  State<Bitrise> createState() => _BitriseState();
}

class _BitriseState extends State<Bitrise> {
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
            Text("Bitrise", style: Theme.of(context).textTheme.headline1),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Bitrise is a cloud-based continuous integration and delivery (CI/CD) platform that can be used with Flutter mobile app development.",
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
                'Bitrise provides a comprehensive suite of tools for automating the build, test, and deployment process for mobile apps, including apps built with Flutter. With Bitrise, developers can automate tasks such as building the app, running tests, and distributing the app to various app stores.',
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
              "Adding a Flutter app to Bitrise",
              "https://devcenter.bitrise.io/en/getting-started/getting-started-with-flutter-apps",
            ),
          ],
        ),
      ),
    );
  }
}
