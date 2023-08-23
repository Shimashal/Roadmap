// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class ESModules extends StatefulWidget {
  const ESModules({super.key});

  @override
  State<ESModules> createState() => _ESModulesState();
}

class _ESModulesState extends State<ESModules> {

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
            Text("ESModules", style: Theme.of(context).textTheme.headline2,
            textAlign: TextAlign.justify,),
            const SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "ESModules is a standard that was introduced with ES6 (2015). The idea was to standardize how JS modules work and implement these features in browsers. This standard is widely used with frontend frameworks such as react and can also be used in the backend with Node.js. Sometimes these modules will be written with a .mjs extension.",
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
              "Introduction to Modules in Javascript",
              "https://www.freecodecamp.org/news/modules-in-javascript/",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "Full ESM module overview from MDN",
              "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Modules",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "Full ESM module overview from js.info",
              "https://javascript.info/modules",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "Node.js documentation for ESModules",
              "https://nodejs.org/api/esm.html",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "JavaScript ES6 Modules Simplified",
              "https://www.youtube.com/watch?v=cRHQNNcYf6s&ab_channel=WebDevSimplified",
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
