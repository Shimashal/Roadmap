// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class OpacityAnimation extends StatefulWidget {
  const OpacityAnimation({super.key});

  @override
  State<OpacityAnimation> createState() => _OpacityAnimationState();
}

class _OpacityAnimationState extends State<OpacityAnimation> {
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
            Text("Opacity", style: Theme.of(context).textTheme.headline1),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Opacity is a Flutter widget that allows you to control the transparency of its child widget. It takes a single opacity argument, which is a value between 0.0 and 1.0, where 0.0 represents complete transparency and 1.0 represents complete opacity. The child widget is drawn with the specified opacity, making it appear translucent or transparent, depending on the value of the opacity argument. This can be useful for creating visual effects such as fading in or out, or to create partially transparent backgrounds or overlays. By using Opacity in combination with other widgets and animations, you can create sophisticated visual effects in your Flutter app.",
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
              "Fade a widget in and out",
              "https://docs.flutter.dev/cookbook/animation/opacity-animation",
            ),
            const SizedBox(
              height: 20,
            ),
            LaunchUrl.buildLink(
              context,
              "AnimatedOpacity widget",
              "https://docs.flutter.dev/codelabs/implicit-animations#animate-opacity-with-animatedopacity-widgets",
            ),
             const SizedBox(
              height: 20,
            ),
            LaunchUrl.buildLink(
              context,
              "Hero class",
              "https://api.flutter.dev/flutter/widgets/Hero-class.html",
            ),
          ],
        ),
      ),
    );
  }
}
