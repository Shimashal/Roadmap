// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class ChangeNotifierState extends StatefulWidget {
  const ChangeNotifierState({super.key});

  @override
  State<ChangeNotifierState> createState() => _ChangeNotifierStateState();
}

class _ChangeNotifierStateState extends State<ChangeNotifierState> {
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
            Text("Change Notifier", style: Theme.of(context).textTheme.headline1),
            
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
              "ChangeNotifier class - Flutter",
              "https://api.flutter.dev/flutter/foundation/changenotifier-class.html",
            ),
            const SizedBox(
              height: 20,
            ),
             LaunchUrl.buildLink(
              context,
              "Simple app state management",
              "https://docs.flutter.dev/data-and-backend/state-mgmt/simple",
            ),
          ],
        ),
      ),
    );
  }
}
