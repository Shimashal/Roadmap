// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class ImagesL4 extends StatefulWidget {
  const ImagesL4({super.key});

  @override
  State<ImagesL4> createState() => _ImagesL4State();
}

class _ImagesL4State extends State<ImagesL4> {
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
            Text("Fonts", style: Theme.of(context).textTheme.headline1),
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
                          'In Flutter, you can display images using the Image widget.\n',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    TextSpan(
                      text:
                          'There are several ways to add an image to your app:\n',
                      style: Theme.of(context).textTheme.subtitle1,
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
                          text:
                              'Asset: Add the image to your app’s assets and specify the asset path in the Image widget.\n',
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
                          text:
                              'Network: Display an image from a URL by specifying the URL in the Image widget.\n',
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
                          text:
                              'File: Display an image from a file by specifying the file path in the Image widget.\n',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ],
                    ),
                    TextSpan(
                      text:
                          'The Image widget also accepts additional parameters such as fit, width, and height to control the size and scaling of the image.',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ],
                ),
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
              "Adding assets and images",
              "https://docs.flutter.dev/development/ui/assets-and-images",
            ),
            const SizedBox(
              height: 20,
            ),
            LaunchUrl.buildLink(
              context,
              "Images in Flutter",
              "https://docs.flutter.dev/cookbook/images",
            ),
          ],
        ),
      ),
    );
  }
}
