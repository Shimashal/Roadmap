// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class StoreageFirebase extends StatefulWidget {
  const StoreageFirebase({super.key});

  @override
  State<StoreageFirebase> createState() => _StoreageFirebaseState();
}

class _StoreageFirebaseState extends State<StoreageFirebase> {
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
            Text("Storage", style: Theme.of(context).textTheme.headline1),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "In Flutter, you can use Firebase Storage to store and retrieve binary data, such as images, audio files, and videos. Firebase Storage is a cloud-based storage service provided by Firebase that makes it easy to store and serve large binary data, such as images and videos, in your Flutter app.",
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
                "To use Firebase Storage in your Flutter app, you need to first create a Firebase project in the Firebase Console and then add the Firebase Storage package to your Flutter app.",
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
                'Learn more from the following links:',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            LaunchUrl.buildLink(
              context,
              "How to Upload and Retrieve Images from Firebase Storage",
              "https://www.youtube.com/watch?v=sM-WMcX66FI&ab_channel=MaxonFlutter",
            ),
          ],
        ),
      ),
    );
  }
}
