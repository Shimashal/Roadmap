// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class CupertinoWidgets extends StatefulWidget {
  const CupertinoWidgets({super.key});

  @override
  State<CupertinoWidgets> createState() => _CupertinoWidgetsState();
}

class _CupertinoWidgetsState extends State<CupertinoWidgets> {
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text("Cupertino  Widgets", style: Theme.of(context).textTheme.headline1),
            
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Cupertino widgets are a set of Flutter widgets that mimic the look and feel of Apple’s iOS user interface. They are designed to provide a consistent look and feel on both iOS and Android devices, and include widgets such as CupertinoButton, CupertinoAlertDialog, and CupertinoSlider. These widgets are useful for building cross-platform apps that need to conform to the iOS design aesthetic.s ",
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
                'Visit the following resources to learn more:',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
             LaunchUrl.buildLink(
              context,
              "Cupertino (iOS-style) widgets",
              "https://docs.flutter.dev/ui/widgets/cupertino",
            ),
            const SizedBox(
              height: 20,
            ),
             LaunchUrl.buildLink(
              context,
              "Flutter Cupertino Tutorial",
              "https://blog.logrocket.com/flutter-cupertino-tutorial-build-ios-apps-native/",
            ),
            const SizedBox(
              height: 20,
            ),
             LaunchUrl.buildLink(
              context,
              "Flutter Cupertino Widgets",
              "https://www.youtube.com/watch?v=L-TY_5NZ7z4&ab_channel=FlutterMapp",
            ),
          ],
        ),
      ),
    );
  }
}
