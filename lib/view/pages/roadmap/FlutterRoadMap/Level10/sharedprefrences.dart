import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class SharedprefrencesStorage extends StatefulWidget {
  const SharedprefrencesStorage({super.key});

  @override
  State<SharedprefrencesStorage> createState() => _SharedprefrencesStorageState();
}

class _SharedprefrencesStorageState extends State<SharedprefrencesStorage> {
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
            Text("Shared Preferences", style: Theme.of(context).textTheme.displayLarge),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "In Flutter, SharedPreferences is a plugin allowing you to store data in key-value pairs persistently. It is similar to a local database or cache, but it is specifically designed to store small pieces of data, such as user preferences or settings. The SharedPreferences plugin is often used to store simple pieces of data that need to be accessed by multiple screens or widgets in an app. For example, you might use SharedPreferences to store the user’s login status or the app’s theme color.",
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
                'Visit the following resources to learn more:',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            LaunchUrl.buildLink(
              context,
              "shared_preferences - pub.dev package",
              "https://pub.dev/packages/shared_preferences",
            ),
             const SizedBox(
              height: 20,
            ),
            LaunchUrl.buildLink(
              context,
              "How do I access Shared Preferences?",
              "https://docs.flutter.dev/get-started/flutter-for/android-devs#how-do-i-access-shared-preferences",
            ),
             
          ],
        ),
      ),
    );
  }
}
