// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class HeroAnimation extends StatefulWidget {
  const HeroAnimation({super.key});

  @override
  State<HeroAnimation> createState() => _HeroAnimationState();
}

class _HeroAnimationState extends State<HeroAnimation> {
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
              Text("Hero", style: Theme.of(context).textTheme.headline1),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Hero is a widget in Flutter that allows you to create smooth animations between screens or within a single screen, for widgets that are used in multiple places. It animates the transition of a widget from one screen to another or from one position to another within a screen. The widget that is being animated should have a unique tag property so that Flutter can match the source and destination widgets. Hero widgets are used for visual continuity between screens, so when the user navigates from one screen to another, the hero widget smoothly transitions to its new position instead of abruptly appearing or disappearing. This can make the navigation between screens feel more seamless and enjoyable for the user.",
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
                "Hero animations",
                "https://docs.flutter.dev/ui/animations/hero-animations",
              ),
              const SizedBox(
                height: 20,
              ),
              LaunchUrl.buildLink(
                context,
                "HeroAnimation class",
                "https://docs.flutter.dev/ui/animations/hero-animations#heroanimation-class",
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
     ),
    );
  }
}
