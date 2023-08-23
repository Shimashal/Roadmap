// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class Codemagic extends StatefulWidget {
  const Codemagic({super.key});

  @override
  State<Codemagic> createState() => _CodemagicState();
}

class _CodemagicState extends State<Codemagic> {
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
            Text("Codemagic", style: Theme.of(context).textTheme.headline1),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Codemagic is a cloud-based continuous integration and delivery (CI/CD) platform specifically designed for Flutter mobile app development.",
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
                'Codemagic provides a simple and efficient way for Flutter developers to automate the build, test, and deployment process for their apps. It integrates with the Flutter framework and allows developers to configure the build process, run tests, and distribute the app to various app stores with just a few clicks.',
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
                'Visit the following links:',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            LaunchUrl.buildLink(
              context,
              "Codemagic - Flutter",
              "https://codemagic.io/start/",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "Create a build archive with Codemagic",
              "https://docs.flutter.dev/deployment/ios#create-a-build-archive-with-codemagic-cli-tools",
            ),
          ],
        ),
      ),
    );
  }
}
