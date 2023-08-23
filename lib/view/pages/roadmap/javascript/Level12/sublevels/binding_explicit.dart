// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class ExplicitBining extends StatefulWidget {
  const ExplicitBining({super.key});

  @override
  State<ExplicitBining> createState() => _ExplicitBiningState();
}

class _ExplicitBiningState extends State<ExplicitBining> {

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
            Text("Explicit binding", style: Theme.of(context).textTheme.headline2,
            textAlign: TextAlign.justify,),
            const SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Explicit binding is when you use the call or apply methods to explicitly set the value of this in a function. Explicit Binding can be applied using call(), apply(), and bind().",
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
               const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "Explicit Binding",
              "https://medium.com/swlh/javascript-this-ac28f8e0f65d",
            ),
             const SizedBox(
              height: 10,
            ),
             LaunchUrl.buildLink(
              context,
              "Explicit Binding rule for this keyword",
              "https://medium.com/@msinha2801/explicit-binding-rule-for-this-keyword-in-js-712405b0a11",
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
