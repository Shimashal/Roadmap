// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class CallBacks extends StatefulWidget {
  const CallBacks({super.key});

  @override
  State<CallBacks> createState() => _CallBacksState();
}

class _CallBacksState extends State<CallBacks> {

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
            Text("Callbacks", style: Theme.of(context).textTheme.headline2,
            textAlign: TextAlign.justify,),
            const SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "A callback function is a function passed into another function as an argument, which is then invoked inside the outer function to complete some kind of routine or action.",
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
              "Callbacks in JavaScript",
              "https://javascript.info/callbacks",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "Callback Functions",
              "https://developer.mozilla.org/en-US/docs/Glossary/Callback_function",
            ),
             const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "W3School CallBack Function",
              "https://www.w3schools.com/js/js_callback.asp",
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
