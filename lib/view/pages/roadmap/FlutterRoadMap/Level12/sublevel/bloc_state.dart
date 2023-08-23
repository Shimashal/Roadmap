// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class BlocState extends StatefulWidget {
  const BlocState({super.key});

  @override
  State<BlocState> createState() => _BlocStateState();
}

class _BlocStateState extends State<BlocState> {
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
            Text("BloC", style: Theme.of(context).textTheme.headline1),
            const SizedBox(
              height: 20,
            ),
           Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Bloc (Business Logic Component) is a state management pattern used in Flutter to separate presentation logic from business logic. It helps to manage and maintain the app state, making it easier to test, debug, and reuse code. It uses streams to emit new states and reacts to changes in the state.",
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
              "Get started with flutter_bloc",
              "https://pub.dev/packages/flutter_bloc",
            ),
             const SizedBox(
              height: 20,
            ),
            LaunchUrl.buildLink(
              context,
              "BLoC in Flutter",
              "https://docs.flutter.dev/data-and-backend/state-mgmt/options#bloc--rx",
            ),
            const SizedBox(
              height: 20,
            ),
            LaunchUrl.buildLink(
              context,
              "Flutter bloc for beginners",
              "https://medium.com/flutter-community/flutter-bloc-for-beginners-839e22adb9f5",
            ),
            const SizedBox(
              height: 20,
            ),
            LaunchUrl.buildLink(
              context,
             "Flutter Bloc - Tutorial",
              "https://www.youtube.com/watch?v=Ep6R7U9wa0U&ab_channel=FlutterMapp",
            ),
         
          ],
        ),
      ),
    );
  }
}
