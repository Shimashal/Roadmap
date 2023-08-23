// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';
import 'package:map_app_task/res/components/levelsbtn.dart';
import 'package:map_app_task/utils/routes/route_name.dart';

class FirebaseStorage extends StatefulWidget {
  const FirebaseStorage({super.key});

  @override
  State<FirebaseStorage> createState() => _FirebaseStorageState();
}

class _FirebaseStorageState extends State<FirebaseStorage> {
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text("Firebase", style: Theme.of(context).textTheme.headline1),
              
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Firebase is a Backend-as-a-Service (BaaS) app development platform that provides hosted backend services such as a realtime database, cloud storage, authentication, crash reporting, machine learning, remote configuration, and hosting for your static files.",
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
                "Firebase",
                "https://docs.flutter.dev/data-and-backend/firebase",
              ),
              const SizedBox(
                height: 20,
              ),
               LaunchUrl.buildLink(
                context,
                "Flutter Firebase Tutorials",
                "https://www.youtube.com/watch?v=agxDK0qmH88&list=PLFyjjoCMAPtxS6Cx1XSjCfxOxHQ4_e0sL&ab_channel=TheTechBrothers",
              ),
              const SizedBox(
                height: 20,
              ),
              LevelBtn(
                onPress: () {
                  Navigator.pushNamed(context, RouteName.FirebaseAuthStorage);
                },
                title: 'Authentication',
              ),
              const SizedBox(
                height: 20,
              ),
              LevelBtn(
                onPress: () {
                  Navigator.pushNamed(context, RouteName.Storagefirebase);
                },
                title: 'Storage',
              ),
              const SizedBox(
                height: 20,
              ),
              LevelBtn(
                onPress: () {
                  Navigator.pushNamed(context, RouteName.FireStore_Firebase);
                },
                title: 'Firestore',
              ),
              const SizedBox(
                height: 20,
              ),
              LevelBtn(
                onPress: () {
                  Navigator.pushNamed(context, RouteName.PushNotifyfirebase);
                },
                title: 'Push Notifications',
              ),
              const SizedBox(
                height: 20,
              ),
              LevelBtn(
                onPress: () {
                  Navigator.pushNamed(context, RouteName.RemoteConfigfirebase);
                },
                title: 'Remote Config',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
