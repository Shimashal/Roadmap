// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class FontsL4 extends StatefulWidget {
  const FontsL4({super.key});

  @override
  State<FontsL4> createState() => _FontsL4State();
}

class _FontsL4State extends State<FontsL4> {
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
              child: Text(
                "You can use custom fonts in your app by including the font file in your app’s assets and specifying the font in your app’s styles.",
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
                'Visit the following resources to learn more:',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
             LaunchUrl.buildLink(
              context,
              "Font - Flutter",
              "https://docs.flutter.dev/cookbook/design/fonts",
            ),
            const SizedBox(
              height: 20,
            ),
             LaunchUrl.buildLink(
              context,
              "How to use custom fonts in Flutter",
              "https://blog.logrocket.com/use-custom-fonts-flutter/",
            ),
          ],
        ),
      ),
    );
  }
}
