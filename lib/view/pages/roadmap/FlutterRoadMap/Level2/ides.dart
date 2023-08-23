import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class IDES extends StatefulWidget {
  const IDES({super.key});

  @override
  State<IDES> createState() => _IDESState();
}

class _IDESState extends State<IDES> {
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
            Text("Flutter CLI", style: Theme.of(context).textTheme.displayLarge),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Flutter CLI (Command Line Interface) is a command-line tool that is used to develop, build, and run Flutter applications. It provides a set of commands and tools that developers can use to create, test, and deploy Flutter apps from the terminal. ",
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
              "The Flutter command-line tool",
              "https://docs.flutter.dev/reference/flutter-cli",
            ),
            const SizedBox(
              height: 20,
            ),
            LaunchUrl.buildLink(
              context,
              "CLI Packages in Flutter",
              "https://dart.dev/server/libraries#command-line-packages",
            ),
             const SizedBox(
              height: 20,
            ),
            LaunchUrl.buildLink(
              context,
              "Get started with Flutter CLI",
              "https://dart.dev/tutorials/server/get-started",
            ),
          ],
        ),
      ),
    );
  }
}
