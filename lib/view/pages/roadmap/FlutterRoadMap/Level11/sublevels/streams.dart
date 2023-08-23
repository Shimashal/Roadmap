// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class StreamAdvance extends StatefulWidget {
  const StreamAdvance({super.key});

  @override
  State<StreamAdvance> createState() => _StreamAdvanceState();
}

class _StreamAdvanceState extends State<StreamAdvance> {
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
            Text("Streams", style: Theme.of(context).textTheme.headline1),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Streams in Flutter are a way to receive data over time as it becomes available. They are similar to observables in other languages and frameworks. Streams can be used for things like getting real-time updates from a server, or listening for changes in user input. In Flutter, streams are represented by the Stream class and can be listened to using the StreamBuilder widget.",
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
                'Visit the following resources to learn more',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            LaunchUrl.buildLink(
              context,
              "Creating streams in Dart",
              "https://dart.dev/articles/libraries/creating-streams",
            ),
          ],
        ),
      ),
    );
  }
}
