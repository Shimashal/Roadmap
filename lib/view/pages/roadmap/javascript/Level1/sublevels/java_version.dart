// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class JavaVersion extends StatefulWidget {
  const JavaVersion({super.key});

  @override
  State<JavaVersion> createState() => _JavaVersionState();
}

class _JavaVersionState extends State<JavaVersion> {

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
            Text("Javascript Versions", style: Theme.of(context).textTheme.headline2),
            const SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "JavaScript was invented by Brendan Eich, and in 1997 it became an ECMA standard. ECMAScript is the official language name. ECMAScript versions include ES1, ES2, ES3, ES5, and ES6",
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
              "JavaScript Versions: How JavaScript has changed over the years",
              "https://www.educative.io/blog/javascript-versions-history",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "Brief History of JavaScript",
              "https://roadmap.sh/guides/history-of-javascript",
            ),
           
          ],

        ),
      ),
    );
  }
}
