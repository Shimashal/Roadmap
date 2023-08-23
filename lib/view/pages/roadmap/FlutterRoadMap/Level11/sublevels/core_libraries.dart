// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class CoreLib extends StatefulWidget {
  const CoreLib({super.key});

  @override
  State<CoreLib> createState() => _CoreLibState();
}

class _CoreLibState extends State<CoreLib> {
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
            Text("Core Libraries", style: Theme.of(context).textTheme.headline1),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Dart has a rich set of core libraries that provide essentials for many everyday programming tasks such as working on collections of objects (dart:collection), making calculations (dart:math), and encoding/decoding data (dart:convert).",
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
              "Core libraries",
              "https://dart.dev/guides/libraries",
            ),
             const SizedBox(
              height: 20,
            ),
            LaunchUrl.buildLink(
              context,
              "Libraries",
              "https://api.flutter.dev/",
            ),
          ],
        ),
      ),
    );
  }
}
