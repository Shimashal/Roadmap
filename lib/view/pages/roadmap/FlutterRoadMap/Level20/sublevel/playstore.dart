// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class PlayStores extends StatefulWidget {
  const PlayStores({super.key});

  @override
  State<PlayStores> createState() => _PlayStoresState();
}

class _PlayStoresState extends State<PlayStores> {
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
            Text("Playstore", style: Theme.of(context).textTheme.headline1),
            const SizedBox(
              height: 20,
            ),
          Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'The Google Play Store is an online store for Android apps, games, and other digital content. It is operated by Google and is the official app store for Android devices.',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Visit the following resources to learn more:',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "Publish your app",
              "https://developer.android.com/studio/publish",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "Build and release an Android app",
              "https://docs.flutter.dev/deployment/android",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "Publishing Flutter App To PlayStore",
              "https://medium.flutterdevs.com/publishing-flutter-app-to-playstore-fa7543b61a7b",
            ),
          ],
        ),
      ),
    );
  }
}
