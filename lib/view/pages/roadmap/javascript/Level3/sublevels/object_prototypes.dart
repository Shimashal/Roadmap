// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';
import 'package:map_app_task/res/components/levelsbtn.dart';
import 'package:map_app_task/utils/routes/route_name.dart';

class PrototypesObject extends StatefulWidget {
  const PrototypesObject({super.key});

  @override
  State<PrototypesObject> createState() => _PrototypesObjectState();
}

class _PrototypesObjectState extends State<PrototypesObject> {

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
            Text("TypeOf Operator", style: Theme.of(context).textTheme.headline2,
            textAlign: TextAlign.justify,),
            const SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "JavaScript is an object-oriented language built around a prototype model. In JavaScript, every object inherits properties from its prototype, if there are any. A prototype is simply an object from which another object inherits properties. To create complex programs using JavaScript, one has to be proficient in working with prototypes — they form the very core of OOP in the language.",
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
              "Prototypes in JavaScript - A Comprehensive Guide",
              "https://www.codeguage.com/courses/js/objects-prototypes",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "Prototypes, Inheritance",
              "https://javascript.info/prototypes",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "Object prototypes - MDN",
              "https://developer.mozilla.org/en-US/docs/Learn/JavaScript/Objects/Object_prototypes",
            ),
             const SizedBox(
                  height: 40,
                ),
                LevelBtn(
                  onPress: () {
                   Navigator.pushNamed(context, RouteName.prototypalInheritance);
                  },
                  title: 'Prototypal Inheritance',
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
