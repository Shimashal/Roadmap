// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class ThisFunction extends StatefulWidget {
  const ThisFunction({super.key});

  @override
  State<ThisFunction> createState() => _ThisFunctionState();
}

class _ThisFunctionState extends State<ThisFunction> {
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
            Text(
              "this in a function",
              style: Theme.of(context).textTheme.headline2,
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "The keyword this when used in a function refers to the global object.",
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
                "Note: in a browser window the global object is the window object.",
                style: Theme.of(context).textTheme.subtitle1?.copyWith(
                          fontStyle: FontStyle.italic,
                        ) ??
                    const TextStyle(fontStyle: FontStyle.italic),
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Visit the following resources to learn more:",
                style: Theme.of(context).textTheme.subtitle1,
                textAlign: TextAlign.justify,
              ),
            ),
            LaunchUrl.buildLink(
              context,
              "this in a function",
              "https://www.w3schools.com/js/js_this.asp",
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
