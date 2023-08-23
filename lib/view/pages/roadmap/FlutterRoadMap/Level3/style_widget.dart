// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';
import 'package:map_app_task/res/components/levelsbtn.dart';
import 'package:map_app_task/utils/routes/route_name.dart';

class StyleWidgets extends StatefulWidget {
  const StyleWidgets({super.key});

  @override
  State<StyleWidgets> createState() => _StyleWidgetsState();
}

class _StyleWidgetsState extends State<StyleWidgets> {
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
            Text("Styled Widgets", style: Theme.of(context).textTheme.headline1),
            
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Styled Widgets are Flutter widgets that are decorated with custom styles, such as colors, fonts, and shapes. They can be created by wrapping existing widgets with other widgets, such as Container, Theme, or BoxDecoration.",
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
                'Learn more from the following links:',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
             LaunchUrl.buildLink(
              context,
              "Styling widgets in Flutter",
              "https://docs.flutter.dev/ui/widgets/styling",
            ),
            const SizedBox(
              height: 20,
            ),
             LaunchUrl.buildLink(
              context,
              "Style Your Flutter Widgets",
              "https://www.youtube.com/watch?v=kcq8AbVyMbk&ab_channel=ResoCoder",
            ),
            const SizedBox(
              height: 20,
            ),
            LevelBtn(
              onPress: () {
                Navigator.pushNamed(context, RouteName.Material_Widgets);
              },
              title: 'Material Widgets',
            ),
            const SizedBox(
              height: 20,
            ),
            LevelBtn(
              onPress: () {
                Navigator.pushNamed(context, RouteName.Cupertino_Widgets);
              },
              title: 'Cupertino Widgets',
            ),
          ],
        ),
      ),
    );
  }
}
