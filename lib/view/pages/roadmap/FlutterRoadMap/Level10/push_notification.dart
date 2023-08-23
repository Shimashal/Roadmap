import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class PushNotificationFirebase extends StatefulWidget {
  const PushNotificationFirebase({super.key});

  @override
  State<PushNotificationFirebase> createState() => _PushNotificationFirebaseState();
}

class _PushNotificationFirebaseState extends State<PushNotificationFirebase> {
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
            Text("Push Notifications", style: Theme.of(context).textTheme.displayLarge),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: RichText(
                textAlign: TextAlign.justify,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text:
                          'To implement push notifications in Flutter using Firebase, follow these steps::\n',
                      style: Theme.of(context).textTheme.titleMedium,
                      children: [
                        const WidgetSpan(
                          child: Padding(
                            padding: EdgeInsets.only(right: 5),
                            child: Icon(
                              Icons.circle,
                              size: 8,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        TextSpan(
                          text: 'Create a Firebase project and set up a Flutter app.\n',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const WidgetSpan(
                          child: Padding(
                            padding: EdgeInsets.only(right: 5),
                            child: Icon(
                              Icons.circle,
                              size: 8,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        TextSpan(
                          text: 'Integrate the Firebase Cloud Messaging (FCM) plugin in your Flutter app.\n',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const WidgetSpan(
                          child: Padding(
                            padding: EdgeInsets.only(right: 5),
                            child: Icon(
                              Icons.circle,
                              size: 8,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        TextSpan(
                          text: 'Handle the incoming push notifications in your Flutter app and specify how they should be displayed.\n',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const WidgetSpan(
                          child: Padding(
                            padding: EdgeInsets.only(right: 5),
                            child: Icon(
                              Icons.circle,
                              size: 8,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        TextSpan(
                          text: 'Send test push notifications using the Firebase Console or other tools like Postman.\n',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const WidgetSpan(
                          child: Padding(
                            padding: EdgeInsets.only(right: 5),
                            child: Icon(
                              Icons.circle,
                              size: 8,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        TextSpan(
                          text: 'Customize your notifications by specifying the notification icon, sound, and vibration pattern.\n',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            LaunchUrl.buildLink(
              context,
              "How do I set up push notifications?",
              "https://docs.flutter.dev/get-started/flutter-for/android-devs#how-do-i-set-up-push-notifications",
            ),
          ],
        ),
      ),
    );
  }
}
