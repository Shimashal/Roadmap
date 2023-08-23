import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class FirebaseAuthStore extends StatefulWidget {
  const FirebaseAuthStore({super.key});

  @override
  State<FirebaseAuthStore> createState() => _FirebaseAuthStoreState();
}

class _FirebaseAuthStoreState extends State<FirebaseAuthStore> {
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
            Text("Authentication", style: Theme.of(context).textTheme.displayLarge),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Firebase Authentication is a service provided by Firebase that allows you to easily add user authentication to your Flutter app. With Firebase Authentication, you can authenticate users using email and password, phone number, or popular identity providers like Google, Facebook, and more.",
                style: Theme.of(context).textTheme.titleMedium,
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "To integrate Firebase Authentication into your Flutter app, you need to first create a Firebase project in the Firebase Console and then add the Firebase Authentication package to your Flutter app.",
                style: Theme.of(context).textTheme.titleMedium,
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
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            LaunchUrl.buildLink(
              context,
              "Make Authenticated requests",
              "https://docs.flutter.dev/cookbook/networking/authenticated-requests",
            ),
          ],
        ),
      ),
    );
  }
}
