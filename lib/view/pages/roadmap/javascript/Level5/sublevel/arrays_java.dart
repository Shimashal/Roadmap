// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class ArraysIndexedCollections extends StatefulWidget {
  const ArraysIndexedCollections({super.key});

  @override
  State<ArraysIndexedCollections> createState() => _ArraysIndexedCollectionsState();
}

class _ArraysIndexedCollectionsState extends State<ArraysIndexedCollections> {

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
            Text("Arrays", style: Theme.of(context).textTheme.headline2,
            textAlign: TextAlign.justify,),
            const SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Arrays are objects that store a collection of items and can be assigned to a variable. They have their methods that can perform operations on the array.",
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
              "Working with Arrays in JavaScript",
              "https://javascript.info/array",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "JavaScript Arrays",
              "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "JavaScript arrays",
              "https://www.youtube.com/watch?v=oigfaZ5ApsM&ab_channel=ProgrammingwithMosh",
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
