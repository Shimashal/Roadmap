// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class FuncProg extends StatefulWidget {
  const FuncProg({super.key});

  @override
  State<FuncProg> createState() => _FuncProgState();
}

class _FuncProgState extends State<FuncProg> {
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
              Text("Functional Programming", style: Theme.of(context).textTheme.headline1),
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
                            'Functional programming is a programming paradigm that emphasizes immutability, statelessness, and the use of functions to transform data. Dart, being a modern programming language, supports functional programming concepts such as:\n',
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
                            text: 'Higher-Order Functions: Dart supports functions that take other functions as arguments and/or return functions as output.\n',
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
                            text: 'Immutable Data: Dart provides support for immutable data structures and encourages the use of these data structures in functional programming.\n',
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
                            text: 'Lambdas/Closures: Dart has support for anonymous functions, also known as lambdas or closures, which can be used to create simple and concise functions.\n',
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
                            text: 'Pure Functions: Dart encourages the use of pure functions, which are functions that have no side effects and always return the same output given the same inputs.\n',
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
                "Brief Overview of Functional Programming",
                "https://buildflutter.com/functional-programming-with-flutter/",
              ),
               const SizedBox(
                height: 20,
              ),
              LaunchUrl.buildLink(
                context,
                "Functional Programming in Dart & Flutter",
                "https://yogi-6.medium.com/list/functional-programming-in-dart-flutter-2f3ac9d7fa39",
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
