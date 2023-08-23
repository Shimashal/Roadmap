// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class DebuggingMemoryLeaks extends StatefulWidget {
  const DebuggingMemoryLeaks({super.key});

  @override
  State<DebuggingMemoryLeaks> createState() => _DebuggingMemoryLeaksState();
}

class _DebuggingMemoryLeaksState extends State<DebuggingMemoryLeaks> {

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
            Text("Debugging Memory Leaks", style: Theme.of(context).textTheme.headline2,
            textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "In JavaScript, memory leaks commonly occur within heap allocated memory, where short lived objects are attached to long lived ones and the Garbage Collector cannot safely de-allocate that memory as it is still referenced from the root set (the global object).",
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
                  "Visit the following resources to learn more:",
                  style: Theme.of(context).textTheme.subtitle1,
                  textAlign: TextAlign.justify,
                ),
              ),
            LaunchUrl.buildLink(
              context,
              "Catching memory leaks with Chrome DevTools",
              "https://medium.com/coding-blocks/catching-memory-leaks-with-chrome-devtools-57b03acb6bb9",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "Effective Javascript Debugging",
              "https://medium.com/swlh/effective-javascript-debugging-memory-leaks-75059b2436f6",
            ),
             const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "Debugging JavaScript memory leaks",
              "https://www.debugbear.com/blog/debugging-javascript-memory-leaks",
            ),
             const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "Debugging Memory Leaks In Production JavaScript Applications",
              "https://www.jackhoy.com/web-applications/2020/10/21/debugging-memory-leaks-in-nodejs.html",
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
