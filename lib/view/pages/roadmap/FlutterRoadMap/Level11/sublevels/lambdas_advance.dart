// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class LambdasAdvance extends StatefulWidget {
  const LambdasAdvance({super.key});

  @override
  State<LambdasAdvance> createState() => _LambdasAdvanceState();
}

class _LambdasAdvanceState extends State<LambdasAdvance> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
     body: SingleChildScrollView(
       child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text("Lambdas", style: Theme.of(context).textTheme.headline1),
              const SizedBox(
                height: 20,
              ),
             Align(
                alignment: Alignment.centerLeft,
                child: RichText(
                  textAlign: TextAlign.justify,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text:
                            'Lambdas, also known as anonymous functions, are a fundamental concept in Dart and Flutter. They are a way to create short, inline functions that can be passed as arguments to other functions or assigned to variables.Here are some common use cases for lambdas in Dart Flutter:\n',
                        style: Theme.of(context).textTheme.subtitle1,
                        children: [
                          const WidgetSpan(
                            child: Padding(
                              padding: EdgeInsets.only(right: 5),
                              child: Icon(
                                Icons.circle,
                                size: 8,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          TextSpan(
                            text: 'Event Handlers: You can use lambdas as event handlers for widgets, such as buttons.\n',
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                          const WidgetSpan(
                            child: Padding(
                              padding: EdgeInsets.only(right: 5),
                              child: Icon(
                                Icons.circle,
                                size: 8,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          TextSpan(
                            text: 'Callbacks: You can use lambdas as callbacks to pass into functions that execute later.\n',
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                          const WidgetSpan(
                            child: Padding(
                              padding: EdgeInsets.only(right: 5),
                              child: Icon(
                                Icons.circle,
                                size: 8,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          TextSpan(
                            text: 'Streams: You can use lambdas to handle events in a Stream.\n',
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                          const WidgetSpan(
                            child: Padding(
                              padding: EdgeInsets.only(right: 5),
                              child: Icon(
                                Icons.circle,
                                size: 8,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          TextSpan(
                            text: 'Filtering: You can use lambdas to filter data in a collection using functions like where and firstWhere.\n',
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                          TextSpan(
                            text: 'Lambdas are defined using the => operator and can take zero or more arguments. They can also contain expressions, statements, and return values. \n',
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Learn more from the following:',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              LaunchUrl.buildLink(
                context,
                "Lambda functions in Dart",
                "https://medium.com/jay-tillu/lambda-functions-in-dart-7db8b759f07a",
              ),
               const SizedBox(
                height: 20,
              ),
              LaunchUrl.buildLink(
                context,
                "Anonymous Function in Dart | Lambda Function",
                "https://www.youtube.com/watch?v=XTKKQdTAR0U&ab_channel=FlutterTeacher",
              ),
            ],
          ),
        ),
     ),
    );
  }
}
