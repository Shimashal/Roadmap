// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class AnimatedBuilders extends StatefulWidget {
  const AnimatedBuilders({super.key});

  @override
  State<AnimatedBuilders> createState() => _AnimatedBuildersState();
}

class _AnimatedBuildersState extends State<AnimatedBuilders> {
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
            Text("AnimatedBuilder", style: Theme.of(context).textTheme.headline1),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "AnimatedBuilder is a widget in Flutter that allows you to build animations. It takes an Animation object and a builder function as input, and it returns a widget that is rebuilt whenever the animation changes. The builder function is called with the BuildContext and the animation object and it should return the widget that should be animated. This can be used to create complex animations with ease, without having to manage animation state or listen to animation events in the widget tree.",
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
              "AnimatedBuilder Class",
              "https://api.flutter.dev/flutter/widgets/AnimatedBuilder-class.html",
            ),
            const SizedBox(
              height: 20,
            ),
            LaunchUrl.buildLink(
              context,
              "Refactoring with AnimatedBuilders",
              "https://docs.flutter.dev/ui/animations/tutorial#refactoring-with-animatedbuilder",
            ),
          ],
        ),
      ),
    );
  }
}
