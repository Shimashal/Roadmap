// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class StatefulWidgets extends StatefulWidget {
  const StatefulWidgets({super.key});

  @override
  State<StatefulWidgets> createState() => _StatefulWidgetsState();
}

class _StatefulWidgetsState extends State<StatefulWidgets> {
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
            Text("Stateful Widgets", style: Theme.of(context).textTheme.headline1),
            
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "A stateful widget is dynamic: for example, it can change its appearance in response to events triggered by user interactions or when it receives data. Checkbox, Radio, Slider, InkWell, Form, and TextField are examples of stateful widgets.",
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
              "StatefulWidget class",
              "https://api.flutter.dev/flutter/widgets/StatefulWidget-class.html",
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
              "Flutter Tutorial - Stateful Widgets",
              "https://www.youtube.com/watch?v=p5dkB3Mrxdo&ab_channel=TheNetNinja",
            ),
          ],
        ),
      ),
    );
  }
}
