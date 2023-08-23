// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class FirebaseAppDistribution extends StatefulWidget {
  const FirebaseAppDistribution({super.key});

  @override
  State<FirebaseAppDistribution> createState() => _FirebaseAppDistributionState();
}

class _FirebaseAppDistributionState extends State<FirebaseAppDistribution> {
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
            Text("Firebase App Distribution", style: Theme.of(context).textTheme.headline1),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Firebase App Distribution is a service provided by Firebase, a mobile development platform owned by Google, that makes it easy to distribute pre-release versions of a mobile app to testers and stakeholders.",
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
                'With Firebase App Distribution, developers can upload a pre-release version of their Flutter mobile app to the Firebase platform, and then invite testers and stakeholders to download and test the app. Testers and stakeholders can provide feedback directly from the app, making it easier for developers to fix bugs and make improvements before releasing the app to the general public.',
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
              "Firebase Hosting",
              "https://firebase.google.com/docs/hosting",
            ),
          ],
        ),
      ),
    );
  }
}
