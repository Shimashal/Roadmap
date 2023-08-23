// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class BDDTest extends StatefulWidget {
  const BDDTest({super.key});

  @override
  State<BDDTest> createState() => _BDDTestState();
}

class _BDDTestState extends State<BDDTest> {
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
            Text("BDD", style: Theme.of(context).textTheme.headline1),
            const SizedBox(
              height: 20,
            ),
           Align(
              alignment: Alignment.centerLeft,
              child: RichText(
                textAlign: TextAlign.justify,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text:
                          'Behavior-driven development (BDD) is a software development methodology that emphasizes collaboration between developers, testers, and stakeholders to define and verify the behavior of an application. BDD uses natural language to describe the expected behavior of the application and provides a shared understanding of the requirements for the development team.\n',
                      style: Theme.of(context).textTheme.subtitle1,
                      children: [
                        TextSpan(
                          text: 'In Flutter, BDD can be applied using the flutter_driver package, which provides a testing framework for writing and running integration tests. BDD can be used to write tests that verify the behavior of the app as a whole, rather than individual widgets or functions.\n',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Learn more from the following:',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            LaunchUrl.buildLink(
              context,
              "Build Flutter with BDD",
              "https://medium.com/tide-engineering-team/build-flutter-with-bdd-b4507170a2fe",
            ),
             const SizedBox(
              height: 20,
            ),
            LaunchUrl.buildLink(
              context,
              "Tutorial - BDD in Flutter",
              "https://www.youtube.com/watch?v=Kwvsc31FE_8",
            ),
          ],
        ),
      ),
    );
  }
}
