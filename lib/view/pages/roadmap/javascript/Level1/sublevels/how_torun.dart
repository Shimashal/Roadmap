// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class HowToRunJava extends StatefulWidget {
  const HowToRunJava({super.key});

  @override
  State<HowToRunJava> createState() => _HowToRunJavaState();
}

class _HowToRunJavaState extends State<HowToRunJava> {

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
            Text("How to run Javascript", style: Theme.of(context).textTheme.headline2),
            const SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "JavaScript can be run in the browser by including the external script file using the script tag, writing it within the HTML page using the script tag again, running it in the browser console or you can also use REPL.",
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
              "How To Add JavaScript to HTML",
              "https://www.digitalocean.com/community/tutorials/how-to-add-javascript-to-html",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "How To Write Your First JavaScript Program",
              "https://www.digitalocean.com/community/tutorials/how-to-write-your-first-javascript-program",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "How To Use the JavaScript Developer Console",
              "https://www.digitalocean.com/community/tutorials/how-to-use-the-javascript-developer-console",
            ),
          ],

        ),
      ),
    );
  }
}
