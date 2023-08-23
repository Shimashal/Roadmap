// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class TryCatch extends StatefulWidget {
  const TryCatch({super.key});

  @override
  State<TryCatch> createState() => _TryCatchState();
}

class _TryCatchState extends State<TryCatch> {

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
            Text("Try, Catch, Finally", style: Theme.of(context).textTheme.headline2,
            textAlign: TextAlign.justify,),
            const SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "These are ways of handling errors in your JavaScript code. Inside the try code block we have the code to run, inside the catch block we handle the errors, and inside the finally block we have code that runs after the execution of the previous code blocks, regardless of the result.",
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
              "JavaScript Errors",
              "https://www.w3schools.com/js/js_errors.asp",
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
