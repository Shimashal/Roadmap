// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class DebuggingIssues extends StatefulWidget {
  const DebuggingIssues({super.key});

  @override
  State<DebuggingIssues> createState() => _DebuggingIssuesState();
}

class _DebuggingIssuesState extends State<DebuggingIssues> {

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
            Text("Debugging issues", style: Theme.of(context).textTheme.headline2,
            textAlign: TextAlign.justify,),
            const SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "When you’re just starting out with JavaScript development, you might use a lot of console.log() statement in your code to log and check values of variables while debugging. The results of these would show up in the Console panel, along with a reference to the line and file of code which originated it.",
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
                  "However, for quicker, more complex and easier to handler debugging (which also doesn’t litter your codebase with console.log()s), breakpoints and the sources panel is your friend.",
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
              "Debugging JavaScript in the sources panel",
              "https://developer.chrome.com/docs/devtools/javascript/",
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
