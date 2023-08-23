// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class WhatJava extends StatefulWidget {
  const WhatJava({super.key});

  @override
  State<WhatJava> createState() => _WhatJavaState();
}

class _WhatJavaState extends State<WhatJava> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text("What is JavaScript?", style: Theme.of(context).textTheme.headline2),
              const SizedBox(
                height: 20,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "JavaScript, often abbreviated JS, is a programming language that is one of the core technologies of the World Wide Web, alongside HTML and CSS. It lets us add interactivity to pages e.g. you might have seen sliders, alerts, click interactions, popups, etc on different websites — all of that is built using JavaScript. Apart from being used in the browser, it is also used in other non-browser environments as well such as Node.js for writing server-side code in JavaScript, Electron for writing desktop applications, React Native for mobile applications, and so on.",
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
                "https://developer.mozilla.org/en-US/docs/Web/JavaScript",
              ),
              const SizedBox(
                height: 10,
              ),
              LaunchUrl.buildLink(
                context,
                "W3Schools – JavaScript Tutorial",
                "https://www.w3schools.com/js/",
              ),
              const SizedBox(
                height: 10,
              ),
              LaunchUrl.buildLink(
                context,
                "The Modern JavaScript Tutorial",
                "https://javascript.info/",
              ),
               const SizedBox(
                height: 10,
              ),
              LaunchUrl.buildLink(
                context,
                "A Comprehensive Course on JavaScript with Quizzes and Exercises - CodeGuage",
                "https://www.codeguage.com/courses/js/",
              ),
               const SizedBox(
                height: 10,
              ),
               LaunchUrl.buildLink(
                context,
                "Exploring JS: JavaScript books for programmers",
                "https://exploringjs.com/",
              ),
               const SizedBox(
                height: 10,
              ),
               LaunchUrl.buildLink(
                context,
                "JavaScript Crash Course for Beginners",
                "https://www.youtube.com/watch?v=hdI2bqOjy3c&t=2s&ab_channel=TraversyMedia",
              ),
               const SizedBox(
                height: 10,
              ),
               LaunchUrl.buildLink(
                context,
                "Build a Netflix Landing Page Clone with HTML, CSS & JS",
                "https://www.youtube.com/watch?v=P7t13SGytRk&t=22s&ab_channel=TraversyMedia",
              ),
               const SizedBox(
                height: 10,
              ),
              LaunchUrl.buildLink(
                context,
                "Learn Javascript - Full course for bignners>",
                "https://www.youtube.com/watch?v=PkZNo7MFNFg&ab_channel=freeCodeCamp.org",
              ),
            ],
      
          ),
        ),
      ),
    );
  }
}
