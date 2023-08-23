// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class ConditionalRendering extends StatefulWidget {
  const ConditionalRendering({super.key});

  @override
  State<ConditionalRendering> createState() => _ConditionalRenderingState();
}

class _ConditionalRenderingState extends State<ConditionalRendering> {

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
            Text("Conditional Rendering", style: Theme.of(context).textTheme.headline2,
            textAlign: TextAlign.justify,),
            const SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "In React, you can create distinct components that encapsulate behavior you need. Then, you can render only some of them, depending on the state of your application.",
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
                  "Conditional rendering in React works the same way conditions work in JavaScript. Use JavaScript operators like if or the conditional operator to create elements representing the current state, and let React update the UI to match them.",
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
              "Conditional Rendering",
              "https://react.dev/learn/conditional-rendering",
            ),
           const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "Different techniques for conditional rendering in React",
              "https://www.robinwieruch.de/conditional-rendering-react/",
            ),
            
             
          ],

        ),
      ),
    );
  }
}
