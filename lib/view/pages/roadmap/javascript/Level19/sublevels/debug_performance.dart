// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class DebuggingPerformance extends StatefulWidget {
  const DebuggingPerformance({super.key});

  @override
  State<DebuggingPerformance> createState() => _DebuggingPerformanceState();
}

class _DebuggingPerformanceState extends State<DebuggingPerformance> {

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
            Text("Debugging Performance", style: Theme.of(context).textTheme.headline2,
            textAlign: TextAlign.justify,),
            const SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Enter the dev tools and check out the Lighthouse tab. This is essentially a series of tests which analyses the currently open website on a bunch of metrics related to performance, page speed, accessibility, etc. Feel free to run the tests by clicking the Analyse Page Load button (you might want to do this in an incognito tab to avoid errors arising from extensions you’re using). Once you have the results, take your time and read through them (and do click through to the reference pages mentioned alongside each test result to know more about it!)",
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
           
            const SizedBox(
              height: 10,
            ),
          ],

        ),
      ),
    );
  }
}
