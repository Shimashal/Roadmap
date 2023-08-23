// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class RiverpodState extends StatefulWidget {
  const RiverpodState({super.key});

  @override
  State<RiverpodState> createState() => _RiverpodStateState();
}

class _RiverpodStateState extends State<RiverpodState> {
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
            Text("Riverpod", style: Theme.of(context).textTheme.headline1),
            const SizedBox(
              height: 20,
            ),
           Align(
              alignment: Alignment.centerLeft,
              child: RichText(
                textAlign: TextAlign.justify,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text:
                          'Riverpod was created by the same author as Provider, and is designed to make it easier to manage application state by providing a more intuitive API and better performance than Provider.\n',
                      style: Theme.of(context).textTheme.subtitle1,
                      children: [
                        TextSpan(
                          text: 'One of the key features of Riverpod is its ability to manage and scope state in a more granular way than Provider. This can make it easier to reason about your application’s state and can lead to more efficient re-renders.\n',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ],
                    ),
                  ],
                ),
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
              "riverpod",
              "https://pub.dev/packages/riverpod",
            ),
             const SizedBox(
              height: 20,
            ),
            LaunchUrl.buildLink(
              context,
              "Riverpod in Flutter",
              "https://docs.flutter.dev/data-and-backend/state-mgmt/options#riverpod",
            ),
            const SizedBox(
              height: 20,
            ),
            LaunchUrl.buildLink(
              context,
              "Documentation",
              "https://riverpod.dev/",
            ),
            const SizedBox(
              height: 20,
            ),
            LaunchUrl.buildLink(
              context,
             "Documentation v2 is in progress",
              "https://docs-v2.riverpod.dev/",
            ),
            const SizedBox(
              height: 20,
            ),
            LaunchUrl.buildLink(
              context,
              "Flutter Riverpod 2.0: The Ultimate Guide",
              "https://codewithandrea.com/articles/flutter-state-management-riverpod/",
            ),
          ],
        ),
      ),
    );
  }
}
