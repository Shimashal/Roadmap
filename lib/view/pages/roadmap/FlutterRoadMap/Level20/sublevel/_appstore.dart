// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class AppStores extends StatefulWidget {
  const AppStores({super.key});

  @override
  State<AppStores> createState() => _AppStoresState();
}

class _AppStoresState extends State<AppStores> {
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
            Text("Appstore", style: Theme.of(context).textTheme.headline1),
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
                          'App Store is an important platform to consider when publishing Flutter apps. To publish an app on the App Store, developers need to have a developer account with Apple, which requires an annual fee.\n',
                      style: Theme.of(context).textTheme.subtitle1,
                      children: [
                         TextSpan(
                          text: 'To publish a Flutter app on the App Store, developers need to ensure that their app meets Apple’s guidelines and requirements, which include guidelines for performance, design, and user experience. Once the app has been reviewed and approved by Apple, it can be published on the App Store and made available for download to iOS users.\n',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                       
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Learn more from the following links:',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "Build and release an iOS app",
              "https://docs.flutter.dev/deployment/ios",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "App Store App Review",
              "https://developer.apple.com/app-store/review/",
            ),
          ],
        ),
      ),
    );
  }
}
