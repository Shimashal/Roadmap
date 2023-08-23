// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class BuiltTypes extends StatefulWidget {
  const BuiltTypes({super.key});

  @override
  State<BuiltTypes> createState() => _BuiltTypesState();
}

class _BuiltTypesState extends State<BuiltTypes> {
  Future<void> _launchUrl(String url) async {
    await LaunchUrl.launchUrl(url);
    setState(() {});
  }

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
            Text("Built-in", style: Theme.of(context).textTheme.headline1),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "The Dart language has special support for the following: Numbers ( int , double ) Strings ( String ) Booleans ( bool ) .",
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
                'Visit the following resources to learn more:',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
             LaunchUrl.buildLink(
              context,
              "Built-in types",
              "https://dart.dev/language/built-in-types",
            ),
            const SizedBox(
              height: 20,
            ),
            LaunchUrl.buildLink(
              context,
              "Overview of Built-in Types",
              "https://dart.dev/guides/language/coming-from/js-to-dart#built-in-types",
            ),
          ],
        ),
      ),
    );
  }
}
