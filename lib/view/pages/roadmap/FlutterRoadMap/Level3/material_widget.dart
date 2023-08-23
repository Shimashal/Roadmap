// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class MaterialWidgets extends StatefulWidget {
  const MaterialWidgets({super.key});

  @override
  State<MaterialWidgets> createState() => _MaterialWidgetsState();
}

class _MaterialWidgetsState extends State<MaterialWidgets> {
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
            Text("Material Widgets", style: Theme.of(context).textTheme.headline1),
            
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Material Widgets are a set of Flutter widgets that implement Material Design, Google’s visual language for design. They are designed to provide a consistent look and feel on both Android and iOS devices. ",
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
              "Material Components widgets",
              "https://docs.flutter.dev/ui/widgets/material",
            ),
            const SizedBox(
              height: 20,
            ),
             LaunchUrl.buildLink(
              context,
              "Flutter – Material Design",
              "https://www.geeksforgeeks.org/flutter-material-design/",
            ),
            const SizedBox(
              height: 20,
            ),
             LaunchUrl.buildLink(
              context,
              "Widget catalog in Flutter",
              "https://docs.flutter.dev/ui/widgets",
            ),
            const SizedBox(
              height: 20,
            ),
             LaunchUrl.buildLink(
              context,
              "Material Designs Guidlines",
              "https://m2.material.io/design/guidelines-overview",
            ),
          ],
        ),
      ),
    );
  }
}
