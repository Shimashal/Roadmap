// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class EventLoop extends StatefulWidget {
  const EventLoop({super.key});

  @override
  State<EventLoop> createState() => _EventLoopState();
}

class _EventLoopState extends State<EventLoop> {

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
            Text("Event Loop", style: Theme.of(context).textTheme.headline2,
            textAlign: TextAlign.justify,),
            const SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "The Event Loop is one of the most important aspects to understand about Node.js. Why is this so important? Because it explains how Node.js can be asynchronous and have non-blocking I/O, it explains the “killer feature” of Node.js, which made it this successful.",
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
              "The Node.Js Event Loop",
              "https://nodejs.org/en/docs/guides/event-loop-timers-and-nexttick#what-is-the-event-loop",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "JavaScript Visualized: Event Loop",
              "https://dev.to/lydiahallie/javascript-visualized-event-loop-3dif",
            ),
             const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "What the heck is the event loop anyway?",
              "https://www.youtube.com/watch?v=8aGhZQkoFbQ&ab_channel=JSConf",
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
