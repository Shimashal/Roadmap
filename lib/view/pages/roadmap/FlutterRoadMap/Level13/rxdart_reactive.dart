// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class RxDartProgram extends StatefulWidget {
  const RxDartProgram({super.key});

  @override
  State<RxDartProgram> createState() => _RxDartProgramState();
}

class _RxDartProgramState extends State<RxDartProgram> {
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
            Text("RxDart", style: Theme.of(context).textTheme.headline1),
            const SizedBox(
              height: 20,
            ),
           Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "RxDart is a library for Dart that provides additional functionality for working with reactive programming, specifically with the Streams and Observables classes. It extends the standard Dart Streams API and provides additional features such as the ability to transform and combine streams, and to compose and chain streams together. In Flutter, RxDart is commonly used to handle asynchronous data streams and user interactions in a more efficient and elegant way.",
                style: Theme.of(context).textTheme.subtitle1,
                textAlign: TextAlign.justify,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Learn more from the following:',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            LaunchUrl.buildLink(
              context,
              "RxDart Official Docs",
              "https://pub.dev/documentation/rxdart/latest/",
            ),
             const SizedBox(
              height: 20,
            ),
            LaunchUrl.buildLink(
              context,
              "Overview of RxDart in Flutter",
              "https://docs.flutter.dev/data-and-backend/state-mgmt/options#bloc--rx",
            ),
          ],
        ),
      ),
    );
  }
}
