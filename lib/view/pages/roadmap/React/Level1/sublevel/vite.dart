// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class ViteCLI extends StatefulWidget {
  const ViteCLI({super.key});

  @override
  State<ViteCLI> createState() => _ViteCLIState();
}

class _ViteCLIState extends State<ViteCLI> {

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
            Text("Vite", style: Theme.of(context).textTheme.headline2,
            textAlign: TextAlign.justify,),
            const SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Vite is a build tool that aims to provide a faster and leaner development experience for modern web projects.",
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
                  "Visit the following resources to learn more:",
                  style: Theme.of(context).textTheme.subtitle1,
                  textAlign: TextAlign.justify,
                ),
              ),
            LaunchUrl.buildLink(
              context,
              "Vite Website",
              "https://vitejs.dev/",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "Vite Documentation",
              "https://vitejs.dev/guide/",
            ),
             const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "Vite Crash Course",
              "https://www.youtube.com/watch?v=LQQ3CR2JTX8&feature=youtu.be",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "Vite Crash Course | Faster Alternative To CRA | 2023",
              "https://www.youtube.com/watch?v=89NJdbYTgJ8&ab_channel=TraversyMedia",
            ),
            const SizedBox(
              height: 10,
            ),
            
          ],

        ),
      ),
    );
  }
}
