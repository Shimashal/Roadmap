import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class PubDart extends StatefulWidget {
  const PubDart({super.key});

  @override
  State<PubDart> createState() => _PubDartState();
}

class _PubDartState extends State<PubDart> {
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
            Text("Pub dev", style: Theme.of(context).textTheme.displayLarge),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "pub.dev is the official package repository for Dart and Flutter packages. It is a platform for hosting, managing, and distributing Dart packages and Flutter plugins. Developers can use pub.dev to search for packages, find information about packages, and install packages in their Flutter projects.",
                style: Theme.of(context).textTheme.titleMedium,
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
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
             LaunchUrl.buildLink(
              context,
              "pub.dev",
              "https://pub.dev/",
            ),
            const SizedBox(
              height: 20,
            ),
            LaunchUrl.buildLink(
              context,
              "Using packages",
              "https://docs.flutter.dev/packages-and-plugins/using-packages",
            ),
          ],
        ),
      ),
    );
  }
}
