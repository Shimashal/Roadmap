// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class FireStoreFirebase extends StatefulWidget {
  const FireStoreFirebase({super.key});

  @override
  State<FireStoreFirebase> createState() => _FireStoreFirebaseState();
}

class _FireStoreFirebaseState extends State<FireStoreFirebase> {
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
            Text("Firestore", style: Theme.of(context).textTheme.headline1),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Firebase Firestore is a cloud-based NoSQL document database service provided by Firebase that makes it easy to store, manage, and retrieve data in your Flutter app. Firestore is a flexible, scalable, and easy-to-use database that allows you to store and retrieve data in the form of documents, collections, and fields.",
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
              "Using Firestore - Flutter",
              "https://www.youtube.com/watch?v=DqJ_KjFzL9I&ab_channel=GoogleforDevelopers",
            ),
          ],
        ),
      ),
    );
  }
}
