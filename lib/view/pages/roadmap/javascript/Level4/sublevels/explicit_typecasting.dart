// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class ExplicitTypeCasting extends StatefulWidget {
  const ExplicitTypeCasting({super.key});

  @override
  State<ExplicitTypeCasting> createState() => _ExplicitTypeCastingState();
}

class _ExplicitTypeCastingState extends State<ExplicitTypeCasting> {

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
            Text("Explicit Type Casting", style: Theme.of(context).textTheme.headline2,
            textAlign: TextAlign.justify,),
            const SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Type casting means transferring data from one data type to another by explicitly specifying the type to convert the given data to. Explicit type casting is normally done to make data compatible with other variables. Examples of typecasting methods are parseInt(), parseFloat(), toString().",
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
              "Type Conversion",
              "https://www.c-sharpcorner.com/article/type-conversions-in-javascript/",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "Type casting",
              "https://www.scaler.com/topics/javascript/type-conversion-in-javascript/",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "Data Type Conversion",
              "https://www.youtube.com/watch?v=VQLYiFqetZM&feature=youtu.be&ab_channel=DevDelight",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "Type conversion",
              "https://developer.mozilla.org/en-US/docs/Glossary/Type_Conversion",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "What is typecasting in JavaScript",
              "https://www.tutorialspoint.com/explain-typecasting-in-javascript",
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
