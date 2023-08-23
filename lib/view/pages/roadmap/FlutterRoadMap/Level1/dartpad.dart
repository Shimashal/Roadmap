// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class DartPad extends StatefulWidget {
 const DartPad({Key? key}) : super(key: key);

  @override
  State<DartPad> createState() => _DartPadState();
}

class _DartPadState extends State<DartPad> {
 Future<void> _launchUrl(String url) async {
    await LaunchUrl.launchUrl(url);
    setState(() {
    });
  }
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
            Text(
                "DartPad",
                style: Theme.of(context).textTheme.headline1
              ),
              const SizedBox(
                height: 20,
              ),
            Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "DartPad is an online tool that allows developers to write and run Dart code snippets. It can also be used to run Flutter code, making it a convenient way to try out Flutter apps and widgets without having to set up a full development environment.",
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
                ),),
                
              const SizedBox(
                height: 10,
              ),
              LaunchUrl.buildLink(
            context,
            "DartPad",
            "https://dart.dev/tools/dartpad",
          
          ),
              const SizedBox(height: 20,),
              LaunchUrl.buildLink(
            context,
            "DartPad in Tutorials",
            "https://dart.dev/tools/dartpad/dartpad-best-practices",
          
          ),
          ],
        ),
      ),
            
    );
  }
}