// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class AnimatedWidgets extends StatefulWidget {
  const AnimatedWidgets({super.key});

  @override
  State<AnimatedWidgets> createState() => _AnimatedWidgetsState();
}

class _AnimatedWidgetsState extends State<AnimatedWidgets> {
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
            Text("AnimatedWidget", style: Theme.of(context).textTheme.headline1),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "AnimatedWidget is a Flutter widget that takes an Animation object as an argument and automatically updates whenever the animation changes. This can be useful when you want to create animations that are tightly coupled to a widget, for example, to animate the size or color of a widget. With AnimatedWidget, you can encapsulate the animation logic into a single widget and reuse it throughout your app. This makes it easier to manage and maintain your animations, as the animation code is centralized and decoupled from the widget tree.",
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
              "Simplifying with Animated­Widget",
              "https://docs.flutter.dev/ui/animations/tutorial#simplifying-with-animatedwidgets",
            ),
            const SizedBox(
              height: 20,
            ),
            LaunchUrl.buildLink(
              context,
              "AnimatedWidget Class",
              "https://api.flutter.dev/flutter/widgets/AnimatedWidget-class.html",
            ),
          ],
        ),
      ),
    );
  }
}
