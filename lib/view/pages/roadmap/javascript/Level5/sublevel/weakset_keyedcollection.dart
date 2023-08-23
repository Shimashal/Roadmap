// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class WeakSetKeyedCollection extends StatefulWidget {
  const WeakSetKeyedCollection({super.key});

  @override
  State<WeakSetKeyedCollection> createState() => _WeakSetKeyedCollectionState();
}

class _WeakSetKeyedCollectionState extends State<WeakSetKeyedCollection> {

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
            Text("WeakSet", style: Theme.of(context).textTheme.headline2,
            textAlign: TextAlign.justify,),
            const SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "WeakSet objects are collections of objects. Just as with Sets, each object in a WeakSet may occur only once; all objects in a WeakSet’s collection are unique.",
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
              "WeakSet",
              "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/WeakSet",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "WeakMap and WeakSet",
              "https://javascript.info/weakmap-weakset",
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
