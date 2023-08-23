// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';
import 'package:map_app_task/res/components/levelsbtn.dart';
import 'package:map_app_task/utils/routes/route_name.dart';

class VariableDec extends StatefulWidget {
  const VariableDec({super.key});

  @override
  State<VariableDec> createState() => _VariableDecState();
}

class _VariableDecState extends State<VariableDec> {

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
            Text("Variable Declarations", style: Theme.of(context).textTheme.headline2,
            textAlign: TextAlign.justify,),
            const SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "To use variables in JavaScript, we first need to create it i.e. declare a variable. To declare variables, we use one of the var, let, or const keywords.",
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
              "Storing the information you need — Variables",
              "https://developer.mozilla.org/en-US/docs/Learn/JavaScript/First_steps/Variables",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "JavaScript Variables - CodeGuage",
              "https://www.codeguage.com/courses/js/variables",
            ),
             const SizedBox(
                height: 30,
              ),
              LevelBtn(
                onPress: () {
                  Navigator.pushNamed(context, RouteName.varKeyword);
                },
                title: 'var',
              ),
              const SizedBox(
                height: 40,
              ),
              LevelBtn(
                onPress: () {
                 Navigator.pushNamed(context, RouteName.letKeyword);
                },
                title: 'let',
              ),
              const SizedBox(
                height: 40,
              ),
              LevelBtn(
                onPress: () {
                  Navigator.pushNamed(context, RouteName.constKeyword);
                },
                title: 'const',
              ),
              const SizedBox(
                height: 40,
              ),
              
          ],

        ),
      ),
    );
  }
}
