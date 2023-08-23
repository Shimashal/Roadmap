// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class RendersObjects extends StatefulWidget {
  const RendersObjects({super.key});

  @override
  State<RendersObjects> createState() => _RendersObjectsState();
}

class _RendersObjectsState extends State<RendersObjects> {
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
            Text("Render Objects", style: Theme.of(context).textTheme.headline1),
            
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'RenderObject’s can be defined as “Objects” that render and manipulate layouts, sizes and draw the UI, providing the actual application rendering. They clean up some resources when dispose method is called, therefore it must be disposed by creator when is no longer used.',
                style: Theme.of(context).textTheme.subtitle1,
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
              "RenderObject documentation",
              "https://api.flutter.dev/flutter/rendering/RenderObject-class.html",
            ),
            const SizedBox(
              height: 20,
            ),
             LaunchUrl.buildLink(
              context,
              "Get started with RenderObjects - Flutter",
              "https://jasper-dev.hashnode.dev/getting-started-with-renderobjects-in-flutter",
            ),
          ],
        ),
      ),
    );
  }
}
