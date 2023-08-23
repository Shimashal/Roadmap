// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class UnaryOperator extends StatefulWidget {
  const UnaryOperator({super.key});

  @override
  State<UnaryOperator> createState() => _UnaryOperatorState();
}

class _UnaryOperatorState extends State<UnaryOperator> {

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
            Text("Unary operators", style: Theme.of(context).textTheme.headline2,
            textAlign: TextAlign.justify,),
            const SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "JavaScript Unary Operators are the special operators that consider a single operand and perform all the types of operations on that single operand. These operators include unary plus, unary minus, prefix increments, postfix increments, prefix decrements, and postfix decrements.",
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
              "Unary Operators in JavaScript",
              "https://www.educba.com/unary-operators-in-javascript/",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "Unary Operators - MDN",
              "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators#unary_operators",
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
