// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class StatelessWidgets extends StatefulWidget {
  const StatelessWidgets({super.key});

  @override
  State<StatelessWidgets> createState() => _StatelessWidgetsState();
}

class _StatelessWidgetsState extends State<StatelessWidgets> {
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
            Text("Stateless Widgets", style: Theme.of(context).textTheme.headline1),
            
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Stateless widgets in Flutter are widgets that don’t maintain any mutable state. They are designed to be immutable and rebuild each time the framework needs to update the UI. They are suitable for static, unchanging views or simple animations. They can be created using the StatelessWidget class and have a single build method that returns a widget tree.",
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
              height: 20,
            ),
             LaunchUrl.buildLink(
              context,
              "StatelessWidget class",
              "https://api.flutter.dev/flutter/widgets/StatelessWidget-class.html",
            ),
            const SizedBox(
              height: 20,
            ),
             LaunchUrl.buildLink(
              context,
              "Flutter – Stateful vs Stateless Widgets",
              "https://www.geeksforgeeks.org/flutter-stateful-vs-stateless-widgets/",
            ),
            const SizedBox(
              height: 20,
            ),
             LaunchUrl.buildLink(
              context,
              "How to Create Stateless Widgets",
              "https://medium.com/flutter/how-to-create-stateless-widgets-6f33931d859",
            ),
          ],
        ),
      ),
    );
  }
}
