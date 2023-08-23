// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class BigIntOperator extends StatefulWidget {
  const BigIntOperator({super.key});

  @override
  State<BigIntOperator> createState() => _BigIntOperatorState();
}

class _BigIntOperatorState extends State<BigIntOperator> {

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
            Text("BigInt Operators", style: Theme.of(context).textTheme.headline2,
            textAlign: TextAlign.justify,),
            const SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Most operators that can be used with the Number data type will also work with BigInt values (e.g. arithmetic, comparison, etc.). However, the unsigned right shift >>> operator is an exception and is not supported. Similarly, some operators may have slight differences in behaviour (for example, division with BigInt will round towards zero).",
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
              "BigInt Operators",
              "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Expressions_and_Operators#bigint_operators",
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
