// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class ReduxState extends StatefulWidget {
  const ReduxState({super.key});

  @override
  State<ReduxState> createState() => _ReduxStateState();
}

class _ReduxStateState extends State<ReduxState> {
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
            Text("ReduX", style: Theme.of(context).textTheme.headline1),
            
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Redux is a state management library for Flutter, commonly used with the Flutter framework to manage the application’s state. It helps to maintain a single source of truth for the state of the application, making it easier to understand, test and maintain the code. In Redux, the state is stored in a store and can only be updated through dispatching actions. The actions trigger the update of the state via reducers, which are pure functions that determine the next state based on the current state and the dispatched action.",
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
              "flutter_redux",
              "https://pub.dev/packages/flutter_redux",
            ),
            const SizedBox(
              height: 20,
            ),
             LaunchUrl.buildLink(
              context,
              "Redux - Tutorial",
              "https://docs.flutter.dev/data-and-backend/state-mgmt/options#redux",
            ),
            const SizedBox(
              height: 20,
            ),
             LaunchUrl.buildLink(
              context,
              "Building a Flutter app with Redux",
              "https://hillel.dev/2018/06/01/building-a-large-flutter-app-with-redux/",
            ),
          ],
        ),
      ),
    );
  }
}
