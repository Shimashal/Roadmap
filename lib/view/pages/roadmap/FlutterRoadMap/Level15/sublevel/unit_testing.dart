// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class UnitTestings extends StatefulWidget {
  const UnitTestings({super.key});

  @override
  State<UnitTestings> createState() => _UnitTestingsState();
}

class _UnitTestingsState extends State<UnitTestings> {
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
              Text("Unit Testing", style: Theme.of(context).textTheme.headline1),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Unit testing in Flutter is the process of testing individual units of code, such as functions or classes, to ensure that they behave as expected. Unit testing helps to catch bugs early in the development process and increases the confidence in your code by making it easier to refactor or make changes without breaking existing functionality.",
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
                  "In Flutter, you can write unit tests using the test package, which provides a testing framework and various test utilities. You can write tests that run on the Dart VM or on a physical device or emulator. The tests are written using a combination of Dart code and special test functions provided by the test package. You can use assert statements to verify the behavior of your code, and the testing framework will report whether the tests pass or fail.",
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
                "An introduction to unit testing",
                "https://docs.flutter.dev/cookbook/testing/unit/introduction",
              ),
              const SizedBox(
                height: 20,
              ),
              LaunchUrl.buildLink(
                context,
                "Unit tests - Flutter",
                "https://docs.flutter.dev/testing#unit-tests",
              ),
            ],
          ),
        ),
     ),
    );
  }
}
