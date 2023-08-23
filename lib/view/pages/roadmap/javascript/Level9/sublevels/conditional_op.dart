// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class ConditionalOperator extends StatefulWidget {
  const ConditionalOperator({super.key});

  @override
  State<ConditionalOperator> createState() => _ConditionalOperatorState();
}

class _ConditionalOperatorState extends State<ConditionalOperator> {

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
            Text("Conditional  Operators", style: Theme.of(context).textTheme.headline2,
            textAlign: TextAlign.justify,),
            const SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Conditional operator also known as Ternary operator is the only JS operator that takes three operands.",
                  style: Theme.of(context).textTheme.subtitle1,
                  textAlign: TextAlign.justify,
                ),
              ),
            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: RichText(
                textAlign: TextAlign.justify,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text:
                          'The operator can have one of two values based on a condition.\n',
                      style: Theme.of(context).textTheme.subtitle1,
                      children: [
                        TextSpan(
                          text: 'Syntax:\n',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        
                        TextSpan(
                          text: 'condition ? val_for_true : val_for_false\n',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ],
                    ),
                  ],
                ),
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
              "JavaScript MDN Docs",
              "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Expressions_and_Operators#conditional_operator",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "W3Schools - JavaScript Tutorials",
              "https://www.w3schools.com/js/js_comparisons.asp",
            ),
            const SizedBox(
              height: 10,
            ),
          ],

        ),
      ),
    );
  }
}
