// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class SetKeyedCollection extends StatefulWidget {
  const SetKeyedCollection({super.key});

  @override
  State<SetKeyedCollection> createState() => _SetKeyedCollectionState();
}

class _SetKeyedCollectionState extends State<SetKeyedCollection> {

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
            Text("Set", style: Theme.of(context).textTheme.headline2,
            textAlign: TextAlign.justify,),
            const SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "The Set object lets you store unique values of any type, whether primitive values or object references. A value in the Set may only occur once; it is unique in the Set’s collection.",
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
              "Set - JavaScript",
              "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "Set - ExploringJS",
              "https://exploringjs.com/impatient-js/ch_sets.html",
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
