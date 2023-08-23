// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class MixPanel extends StatefulWidget {
  const MixPanel({super.key});

  @override
  State<MixPanel> createState() => _MixPanelState();
}

class _MixPanelState extends State<MixPanel> {
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
            Text("Mixpanel", style: Theme.of(context).textTheme.headline1),
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
                          'Mixpanel is a product analytics platform that provides insights into user behavior for mobile apps, including those built with Flutter.\n',
                      style: Theme.of(context).textTheme.subtitle1,
                      children: [
                        TextSpan(
                          text: 'With Mixpanel, Flutter developers can track user interactions with their app, including page views, events, and user properties, and use this data to gain insights into user behavior. Mixpanel provides a range of tools and features for analyzing this data, including real-time dashboards, segmentation, and A/B testing.\n',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        TextSpan(
                          text: 'Some key features of Mixpanel for Flutter apps include:\n',
                          style: Theme.of(context).textTheme.subtitle1,
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
                          text: 'User tracking\n',
                          style: Theme.of(context).textTheme.subtitle1,
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
                          text: 'Real-time dashboards\n',
                          style: Theme.of(context).textTheme.subtitle1,
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
                          text: 'Segmentation\n',
                          style: Theme.of(context).textTheme.subtitle1,
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
                          text: 'A/B testing\n',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ],
                    ),
                  ],
                ),
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
              "Overview of Flutter Mixpanel",
              "https://levelup.gitconnected.com/flutter-web-mixpanel-6046ffb664fb",
            ),
             const SizedBox(
              height: 20,
            ),
            LaunchUrl.buildLink(
              context,
              "Flutter Mixpanel Analytics Integration",
              "https://medium.com/flutter-clan/flutter-mixpanel-analytics-integration-b5840b155f7b",
            ),
          ],
        ),
      ),
    );
  }
}
