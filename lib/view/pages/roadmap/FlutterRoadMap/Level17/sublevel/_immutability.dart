// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class ImmutabilityInternal extends StatefulWidget {
  const ImmutabilityInternal({super.key});

  @override
  State<ImmutabilityInternal> createState() => _ImmutabilityInternalState();
}

class _ImmutabilityInternalState extends State<ImmutabilityInternal> {
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
            Text("Immutability", style: Theme.of(context).textTheme.headline1),
            
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Immutability in Flutter refers to objects that cannot be changed once they are created. In Flutter, immutability is used to ensure that objects in the widget tree are not modified unexpectedly, which can lead to unexpected behavior and bugs in the app.',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
             const SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'In Flutter, objects that represent the state of the app, such as widgets and their properties, are considered immutable. When the state of the app changes, a new object is created to represent the new state, and the widget tree is rebuilt with the updated objects.',
                style: Theme.of(context).textTheme.subtitle1,
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
              "Immutable data in Flutter",
              "https://dart.academy/immutable-data-patterns-in-dart-and-flutter/",
            ),
          ],
        ),
      ),
    );
  }
}
