// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class UtilizingErrorObj extends StatefulWidget {
  const UtilizingErrorObj({super.key});

  @override
  State<UtilizingErrorObj> createState() => _UtilizingErrorObjState();
}

class _UtilizingErrorObjState extends State<UtilizingErrorObj> {

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
            Text("Utilizing error objects", style: Theme.of(context).textTheme.headline2,
            textAlign: TextAlign.justify,),
            const SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "When a runtime error occurs, a new Error object is created and thrown. With this Error object, we can determine the type of the Error and handle it according to its type.",
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
                  "Types of Errors:",
                  style: Theme.of(context).textTheme.headline3,
                  textAlign: TextAlign.justify,
                ),
              ),
              const SizedBox(
              height: 10,
            ),
             LaunchUrl.buildLink(
              context,
              "AggregateError",
              "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/AggregateError",
                       ),
            const SizedBox(
              height: 10,
            ),
             LaunchUrl.buildLink(
              context,
              "EvalError",
              "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/EvalError",
            ),
            const SizedBox(
              height: 10,
            ),
             LaunchUrl.buildLink(
              context,
              "InternalError",
              "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/InternalError",
            ),
            const SizedBox(
              height: 10,
            ),
             LaunchUrl.buildLink(
              context,
              "RangeError",
              "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/RangeError",
            ),
            const SizedBox(
              height: 10,
            ),
             LaunchUrl.buildLink(
              context,
              "ReferenceError",
              "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/ReferenceError",
            ),
            const SizedBox(
              height: 10,
            ),
             LaunchUrl.buildLink(
              context,
              "SyntaxError",
              "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/SyntaxError",
            ),
            const SizedBox(
              height: 20,
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
              "Error Object - MDN",
              "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Error",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "Control flow & Error handling - MDN",
             "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Control_flow_and_error_handling",
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
