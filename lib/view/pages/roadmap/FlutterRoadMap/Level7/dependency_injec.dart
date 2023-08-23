// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class DependencyInjection extends StatefulWidget {
  const DependencyInjection({super.key});

  @override
  State<DependencyInjection> createState() => _DependencyInjectionState();
}

class _DependencyInjectionState extends State<DependencyInjection> {
  Future<void> _launchUrl(String url) async {
    await LaunchUrl.launchUrl(url);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text("Dependency Injection",
                  style: Theme.of(context).textTheme.headline1),
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
                            'Dependency Injection is a design pattern that allows objects to receive their dependencies from external sources instead of creating them internally. In Flutter, this can be useful for managing complex state, reducing coupling between components, and making testing easier.\n',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      TextSpan(
                        text:
                            'Here’s how to use dependency injection in Flutter:\n',
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
                            text: 'Create a dependency\n',
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
                            text: 'Create a provider\n',
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
                            text: 'Use the provider in your widget tree\n',
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
                            text: 'Access the dependency in a widget\n',
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
                  'Visit the following resources to learn more:',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              LaunchUrl.buildLink(
                context,
                "Dependency Injection In Flutter",
                "https://medium.com/flutter-community/dependency-injection-in-flutter-f19fb66a0740",
              ),
              const SizedBox(
                height: 20,
              ),
              LaunchUrl.buildLink(
                context,
                "Flutter Dependency Injection For Beginners",
                "https://www.youtube.com/watch?v=vBT-FhgMaWM&ab_channel=FilledStacks",
              ),
              const SizedBox(
                height: 20,
              ),
              LaunchUrl.buildLink(
                context,
                "Cookbook Designs in Flutter",
                "https://docs.flutter.dev/cookbook/design",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
