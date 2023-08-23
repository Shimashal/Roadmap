import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class SolidPrinciples extends StatefulWidget {
  const SolidPrinciples({super.key});

  @override
  State<SolidPrinciples> createState() => _SolidPrinciplesState();
}

class _SolidPrinciplesState extends State<SolidPrinciples> {
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
            Text("SOLID Principles", style: Theme.of(context).textTheme.displayLarge),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Visit the following resources to learn more:',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
             LaunchUrl.buildLink(
              context,
              "S.O.L.I.D Principles",
              "https://www.youtube.com/watch?v=fvNTJang7l4&ab_channel=Codepur",
            ),
            const SizedBox(
              height: 20,
            ),
            LaunchUrl.buildLink(
              context,
              "Overview of S.O.L.I.D Principles In Dart",
              "https://medium.flutterdevs.com/s-o-l-i-d-principles-in-dart-e6c0c8d1f8f1",
            ),
             const SizedBox(
              height: 20,
            ),
            LaunchUrl.buildLink(
              context,
              "The S.O.L.I.D Principles in Pictures",
              "https://medium.com/backticks-tildes/the-s-o-l-i-d-principles-in-pictures-b34ce2f1e898",
            ),
          ],
        ),
      ),
    );
  }
}
