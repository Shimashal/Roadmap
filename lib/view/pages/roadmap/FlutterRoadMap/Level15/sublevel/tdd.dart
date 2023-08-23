// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class TDDTest extends StatefulWidget {
  const TDDTest({super.key});

  @override
  State<TDDTest> createState() => _TDDTestState();
}

class _TDDTestState extends State<TDDTest> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),

     body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text("TDD", style: Theme.of(context).textTheme.headline1),
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
                          'Test-driven development (TDD) is a software development methodology in which tests are written before the implementation of the code they are testing. The idea behind TDD is to write a failing test first, then write just enough code to make the test pass, and then refactor the code if necessary. This process is repeated for each new feature or requirement that is added to the app.\n',
                      style: Theme.of(context).textTheme.subtitle1,
                      children: [
                        TextSpan(
                          text: 'In Flutter, TDD can be applied using the test and flutter_test packages, which provide testing frameworks for writing and running unit tests and widget tests, respectively. TDD can be used to write tests for individual functions, classes, and widgets, as well as integration tests that verify the behavior of the app as a whole.\n',
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
              "Test-Driven Development in Flutter",
              "https://techblog.geekyants.com/test-driven-development-in-flutter",
            ),
             const SizedBox(
              height: 20,
            ),
            LaunchUrl.buildLink(
              context,
              "Flutter TDD Clean Architecture Course",
              "https://www.youtube.com/watch?v=KjE2IDphA_U&ab_channel=ResoCoder",
            ),
          ],
        ),
      ),
    );
  }
}
