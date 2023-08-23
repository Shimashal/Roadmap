// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class ImplicitTypeCasting extends StatefulWidget {
  const ImplicitTypeCasting({super.key});

  @override
  State<ImplicitTypeCasting> createState() => _ImplicitTypeCastingState();
}

class _ImplicitTypeCastingState extends State<ImplicitTypeCasting> {

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
            Text("Implicit Type Casting", style: Theme.of(context).textTheme.headline2,
            textAlign: TextAlign.justify,),
            const SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Implicit type conversion happens when the compiler or runtime automatically converts data types. JavaScript is loosely typed language and most of the time operators automatically convert a value to the right type.",
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
              "GeeksForGeeks - JavaScript Tutorials",
              "https://www.geeksforgeeks.org/javascript-type-conversion/",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "W3Schools - JavaScript Tutorials",
              "https://www.w3schools.com/js/js_type_conversion.asp",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "TutorialsPoint - JavaScript Tutorials",
              "https://www.tutorialspoint.com/explain-typecasting-in-javascript",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "What you need to know about Javascripts Implicit Coercion",
              "https://dev.to/promisetochi/what-you-need-to-know-about-javascripts-implicit-coercion-e23",
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
