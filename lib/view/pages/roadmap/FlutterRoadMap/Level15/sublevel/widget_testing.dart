// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class WidgetTestings extends StatefulWidget {
  const WidgetTestings({super.key});

  @override
  State<WidgetTestings> createState() => _WidgetTestingsState();
}

class _WidgetTestingsState extends State<WidgetTestings> {
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
              Text("Widget Testing", style: Theme.of(context).textTheme.headline1),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Widget testing in Flutter is the process of testing the behavior and appearance of individual widgets, in isolation from the rest of your app. It allows you to verify that a widget works correctly, displays the expected output, and behaves correctly in response to user interactions.",
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
                  "In Flutter, you can write widget tests using the flutter_test package, which provides a testing framework for writing and running widget tests. A widget test is similar to a unit test, but instead of testing individual functions, you test entire widgets. You can use the TestWidgetsFlutterBinding to run your widget tests and simulate user interactions, such as taps, scrolls, and other gestures.",
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
                  "The framework provides several utility functions to help you build and test widgets, such as pumpWidget, which allows you to pump a widget and its children into the widget tree and simulate a frame of animation, and find, which allows you to search the widget tree for a widget that matches specific criteria.",
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
                  'Visit the following resources to learn more',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              LaunchUrl.buildLink(
                context,
                "An introduction to widget testing",
                "https://docs.flutter.dev/cookbook/testing/widget/introduction",
              ),
              const SizedBox(
                height: 20,
              ),
              LaunchUrl.buildLink(
                context,
                "Widget Tests - Flutter",
                "https://docs.flutter.dev/testing#widget-tests",
              ),
            ],
          ),
        ),
     ),
    );
  }
}
