// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class OTHERFileL4 extends StatefulWidget {
  const OTHERFileL4({super.key});

  @override
  State<OTHERFileL4> createState() => _OTHERFileL4State();
}

class _OTHERFileL4State extends State<OTHERFileL4> {
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
            Text("Other File Types", style: Theme.of(context).textTheme.headline1),
            
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "In Flutter, you can work with different file types besides images. ",
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
                'Learn more from the following link:',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
             LaunchUrl.buildLink(
              context,
              "File class",
              "https://api.flutter.dev/flutter/dart-io/File-class.html",
            ),
            
          ],
        ),
      ),
    );
  }
}
