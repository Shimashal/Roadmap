// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/levelsbtn.dart';
import 'package:map_app_task/utils/routes/route_name.dart';

class ComponentsBasics extends StatefulWidget {
  const ComponentsBasics({super.key});

  @override
  State<ComponentsBasics> createState() => _ComponentsBasicsState();
}

class _ComponentsBasicsState extends State<ComponentsBasics> {
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
            Text(
              "Components Basics",
              style: Theme.of(context).textTheme.headline2,
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Visit the following:",
                style: Theme.of(context).textTheme.subtitle1,
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            LevelBtn(
              onPress: () {
               Navigator.pushNamed(context, RouteName.jsxCom);
              },
              title: 'JSX',
            ),
             const SizedBox(
              height: 40,
            ),
            LevelBtn(
              onPress: () {
               Navigator.pushNamed(context, RouteName.propVSstate);
              },
              title: 'Props vs State',
            ),
             const SizedBox(
              height: 40,
            ),
            LevelBtn(
              onPress: () {
                Navigator.pushNamed(context, RouteName.conditionalRendering);
              },
              title: 'Conditional Rendering',
            ),
             const SizedBox(
              height: 40,
            ),
            LevelBtn(
              onPress: () {
                Navigator.pushNamed(context, RouteName.compositionInherit);
              },
              title: 'Composition',
            ),
          ],
        ),
      ),
    );
  }
}
