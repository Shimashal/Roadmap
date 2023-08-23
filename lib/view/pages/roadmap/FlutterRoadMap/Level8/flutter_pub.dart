import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class FlutterDartt extends StatefulWidget {
  const FlutterDartt({super.key});

  @override
  State<FlutterDartt> createState() => _FlutterDarttState();
}

class _FlutterDarttState extends State<FlutterDartt> {
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
            Text("Flutter pub dart pub", style: Theme.of(context).textTheme.displayLarge),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "pub is the package manager for Dart and Flutter, used for managing dependencies and publishing packages.",
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
              height: 20,
            ),
            LaunchUrl.buildLink(
              context,
              "Overview of Dart pub",
              "https://dart.dev/tools/pub/cmd",
            ),
          ],
        ),
      ),
    );
  }
}
