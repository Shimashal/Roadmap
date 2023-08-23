// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class SetTimeout extends StatefulWidget {
  const SetTimeout({super.key});

  @override
  State<SetTimeout> createState() => _SetTimeoutState();
}

class _SetTimeoutState extends State<SetTimeout> {

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
            Text("setTimeout", style: Theme.of(context).textTheme.headline2,
            textAlign: TextAlign.justify,),
            const SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "The setTimeout runs a function after the specified period expires. Times are declared in milliseconds.",
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
              "JavaScript MDN Docs",
              "https://developer.mozilla.org/en-US/docs/Web/API/setTimeout",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "W3Schools – JavaScript - setTimeOut",
              "https://www.w3schools.com/jsref/met_win_settimeout.asp",
            ),
             const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "setInterval and setTimeout: timing events",
              "https://www.youtube.com/watch?v=kOcFZV3c75I&ab_channel=freeCodeCamp.org",
            ),
             const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "setTimeout EXPLAINED in 5 minutes!",
              "https://www.youtube.com/watch?v=z9lJb4D3nJY&ab_channel=CodewithAniaKub%C3%B3w",
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
