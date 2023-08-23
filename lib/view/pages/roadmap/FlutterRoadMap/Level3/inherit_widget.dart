// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class InheritedWidgets extends StatefulWidget {
  const InheritedWidgets({super.key});

  @override
  State<InheritedWidgets> createState() => _InheritedWidgetsState();
}

class _InheritedWidgetsState extends State<InheritedWidgets> {
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
            Text("Inherited Widgets", style: Theme.of(context).textTheme.headline1),
            
            const SizedBox(
              height: 10,
            ),
             LaunchUrl.buildLink(
              context,
              "InheritedWidget Official Guide",
              "https://api.flutter.dev/flutter/widgets/InheritedWidget-class.html",
            ),
          ],
        ),
      ),
    );
  }
}
