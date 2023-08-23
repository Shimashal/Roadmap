// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class TypedArraysCollections extends StatefulWidget {
  const TypedArraysCollections({super.key});

  @override
  State<TypedArraysCollections> createState() => _TypedArraysCollectionsState();
}

class _TypedArraysCollectionsState extends State<TypedArraysCollections> {

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
            Text("Typed Arrays", style: Theme.of(context).textTheme.headline2,
            textAlign: TextAlign.justify,),
            const SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "In Javascript, a typed array is an array-like buffer of binary data. There is no JavaScript property or object named TypedArray, but properties and methods can be used with typed array objects.",
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
              "JavaScript typed arrays",
              "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Typed_arrays",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "Intro to Typed Arrays in JavaScript",
              "https://www.youtube.com/watch?v=UYkJaW3pmj0&ab_channel=SteveGriffith-Prof3ssorSt3v3",
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
