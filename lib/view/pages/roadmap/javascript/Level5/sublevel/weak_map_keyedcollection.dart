// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class WeakMapKeyedCollection extends StatefulWidget {
  const WeakMapKeyedCollection({super.key});

  @override
  State<WeakMapKeyedCollection> createState() => _WeakMapKeyedCollectionState();
}

class _WeakMapKeyedCollectionState extends State<WeakMapKeyedCollection> {

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
            Text("Weak map", style: Theme.of(context).textTheme.headline2,
            textAlign: TextAlign.justify,),
            const SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "WeakMap is a Map-like collection of key/value pairs whose keys must be objects, it removes them once they become inaccessible by other means",
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
              "WeakMap",
              "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/WeakMap",
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
