// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class IsolatesAdvance extends StatefulWidget {
  const IsolatesAdvance({super.key});

  @override
  State<IsolatesAdvance> createState() => _IsolatesAdvanceState();
}

class _IsolatesAdvanceState extends State<IsolatesAdvance> {
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
              Text("Isolates", style: Theme.of(context).textTheme.headline1),
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
                            'Isolates in Flutter are separate execution contexts that run in parallel with each other. They are used to improve performance and concurrency in Flutter applications. Key benefits of using Isolates in Flutter include:\n',
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
                            text: 'Improved Performance: Isolates allow you to run intensive computations or blocking operations in the background, without freezing the user interface.\n',
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
                            text: 'Concurrent Execution: Isolates provide a way to run multiple tasks concurrently, allowing you to improve the overall performance of your app.\n',
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
                            text: 'Isolation: Each Isolate runs in its own memory space and is isolated from other Isolates. This makes it easier to write reliable and secure code.\n',
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
                            text: 'Communication: Flutter provides a mechanism for communicating between Isolates, allowing them to share data and coordinate their work.\n',
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                           TextSpan(
                            text: 'Isolates are created using the Isolate class and can be used for a variety of tasks, such as network operations, long-running computations, or background tasks. When using Isolates, it’s important to be mindful of the cost of context-switching and communication between Isolates.\n',
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
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
                "How isolates work",
                "https://dart.dev/language/concurrency#how-isolates-work",
              ),
               const SizedBox(
                height: 20,
              ),
              LaunchUrl.buildLink(
                context,
                "Dart - Isolates and event loops",
                "https://medium.com/dartlang/dart-asynchronous-programming-isolates-and-event-loops-bffc3e296a6a",
              ),
              const SizedBox(
                height: 20,
              ),
              LaunchUrl.buildLink(
                context,
                "Functional programming - Flutter",
                "https://docs.flutter.dev/resources/faq",
              ),
            ],
          ),
        ),
     ),
    );
  }
}
