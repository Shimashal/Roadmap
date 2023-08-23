// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class CommonJS extends StatefulWidget {
  const CommonJS({super.key});

  @override
  State<CommonJS> createState() => _CommonJSState();
}

class _CommonJSState extends State<CommonJS> {

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
            Text("CommonJS", style: Theme.of(context).textTheme.headline2,
            textAlign: TextAlign.justify,),
            const SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "CommonJS modules are the original way to package JavaScript code for Node.js. Node.js also supports the ESModules standard used by browsers and other JavaScript runtimes, but CJS is still widely used in backend Node.js applications. Sometimes these modules will be written with a .cjs extension.",
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
              "Modules in Javascript: CJS Section",
              "https://www.freecodecamp.org/news/modules-in-javascript/#commonjsmodules",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "How the CJS Module System Works",
              "https://blog.risingstack.com/node-js-at-scale-module-system-commonjs-require/",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "How to Import and Export Modules in CJS",
              "https://www.youtube.com/watch?v=XTND4rjATXA&ab_channel=OnelightWebDev",
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
