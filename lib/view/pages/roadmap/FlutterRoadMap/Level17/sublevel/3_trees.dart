// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class ThreeTrees extends StatefulWidget {
  const ThreeTrees({super.key});

  @override
  State<ThreeTrees> createState() => _ThreeTreesState();
}

class _ThreeTreesState extends State<ThreeTrees> {
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
            Text("3 Trees", style: Theme.of(context).textTheme.headline1),
            
            const SizedBox(
              height: 20,
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
              "Flutter’s 3 tree architecture",
              "https://medium.com/@omlondhe/flutters-3-tree-architecture-9263b2bd50d1",
            ),
          ],
        ),
      ),
    );
  }
}
