// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class ProviderState extends StatefulWidget {
  const ProviderState({super.key});

  @override
  State<ProviderState> createState() => _ProviderStateState();
}

class _ProviderStateState extends State<ProviderState> {
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
            Text("Provider", style: Theme.of(context).textTheme.headline1),
            const SizedBox(
              height: 20,
            ),
           Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Provider is a wrapper around InheritedWidget (base class for widgets that efficiently propagate information down the tree) to make them easier to use and more reusable.",
                style: Theme.of(context).textTheme.subtitle1,
                textAlign: TextAlign.justify,
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
              "provider",
              "https://pub.dev/packages/provider",
            ),
             const SizedBox(
              height: 20,
            ),
            LaunchUrl.buildLink(
              context,
              "Simple app state management",
              "https://docs.flutter.dev/data-and-backend/state-mgmt/simple",
            ),
          ],
        ),
      ),
    );
  }
}
