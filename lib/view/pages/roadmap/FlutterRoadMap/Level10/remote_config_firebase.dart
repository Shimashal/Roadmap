// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class RemoteConfigFirebase extends StatefulWidget {
  const RemoteConfigFirebase({super.key});

  @override
  State<RemoteConfigFirebase> createState() => _RemoteConfigFirebaseState();
}

class _RemoteConfigFirebaseState extends State<RemoteConfigFirebase> {
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
            Text("Remote Config", style: Theme.of(context).textTheme.headline1),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "It is a cloud-based service that allows you to change the behavior and appearance of your app without requiring users to download an app update. In Flutter, you can use the firebase_remote_config plugin to access Firebase Remote Config.",
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
                'Learn more from the following links:',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            LaunchUrl.buildLink(
              context,
              "Firebase Remote Config",
              "https://www.youtube.com/watch?v=34ExOdNEMXI&ab_channel=Flutter",
            ),
          ],
        ),
      ),
    );
  }
}
