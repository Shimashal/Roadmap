// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class IntegrationTest extends StatefulWidget {
  const IntegrationTest({super.key});

  @override
  State<IntegrationTest> createState() => _IntegrationTestState();
}

class _IntegrationTestState extends State<IntegrationTest> {
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
              Text("Integration Testing", style: Theme.of(context).textTheme.headline1),
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
                            'Integration tests in Flutter are tests that verify the behavior of your app as a whole, rather than individual widgets or functions. Integration tests allow you to test the interactions between different parts of your app and verify that the overall behavior of the app is correct.\n',
                        style: Theme.of(context).textTheme.subtitle1,
                        children: [
                          TextSpan(
                            text: 'In Flutter, you can write integration tests using the flutter_driver package, which provides a testing framework for writing and running integration tests. An integration test runs on a physical device or an emulator, and uses the FlutterDriver class to interact with the app and simulate user interactions, such as taps, scrolls, and gestures.\n',
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                          TextSpan(
                            text: 'The framework provides several utility functions to help you interact with your app, such as tap, scroll, and enterText, which allow you to perform actions in your app and verify its behavior. You can also use waitFor, which allows you to wait for specific conditions to be met before continuing with the test.\n',
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
                "An introduction to integration testing",
                "https://docs.flutter.dev/cookbook/testing/integration/introduction",
              ),
               const SizedBox(
                height: 20,
              ),
              LaunchUrl.buildLink(
                context,
                "Integration Tests",
                "https://docs.flutter.dev/testing#integration-tests",
              ),
            ],
          ),
        ),
     ),
    );
  }
}
