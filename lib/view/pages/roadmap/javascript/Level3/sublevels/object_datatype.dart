// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';
import 'package:map_app_task/res/components/levelsbtn.dart';
import 'package:map_app_task/utils/routes/route_name.dart';

class OperatorDataType extends StatefulWidget {
  const OperatorDataType({super.key});

  @override
  State<OperatorDataType> createState() => _OperatorDataTypeState();
}

class _OperatorDataTypeState extends State<OperatorDataType> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text("Object", style: Theme.of(context).textTheme.headline2,
              textAlign: TextAlign.justify,),
              const SizedBox(
                height: 20,
              ),
               Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'JavaScript object is a data structure that allows us to have key-value pairs; so we can have distinct keys and each key is mapped to a value that can be of any JavaScript data type. Comparing it to a real-world object, a pen is an object with several properties such as color, design, the material it is made of, etc. In the same way, JavaScript objects can have properties that define their characteristics.',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Visit the following resource to learn more:',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
              LaunchUrl.buildLink(
                context,
                "Objects",
                "https://javascript.info/object",
              ),
              const SizedBox(
                height: 10,
              ),
              LaunchUrl.buildLink(
                context,
                "Working with Objects",
                "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Working_with_Objects",
              ),
              const SizedBox(
                height: 10,
              ),
              LaunchUrl.buildLink(
                context,
                "JavaScript Object Definition",
                "https://www.w3schools.com/js/js_object_definition.asp",
              ),
               const SizedBox(
                height: 10,
              ),
              LaunchUrl.buildLink(
                context,
                "Objects in JavaScript",
                "https://www.geeksforgeeks.org/objects-in-javascript/",
              ),
              const SizedBox(
                  height: 40,
                ),
                LevelBtn(
                  onPress: () {
                   Navigator.pushNamed(context, RouteName.objectPrototype);
                  },
                  title: 'Object Prototypes',
                ),
                const SizedBox(
                  height: 40,
                ),
                 LevelBtn(
                  onPress: () {
                   Navigator.pushNamed(context, RouteName.builtinObjects);
                  },
                  title: 'Built-in Objects',
                ),
                const SizedBox(
                  height: 40,
                ),
            ],
      
          ),
        ),
      ),
    );
  }
}
