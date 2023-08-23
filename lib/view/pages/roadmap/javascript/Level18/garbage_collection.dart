// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class GarbageCollection extends StatefulWidget {
  const GarbageCollection({super.key});

  @override
  State<GarbageCollection> createState() => _GarbageCollectionState();
}

class _GarbageCollectionState extends State<GarbageCollection> {

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
            Text("Garbage Collection", style: Theme.of(context).textTheme.headline2,
            textAlign: TextAlign.justify,),
            const SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Memory management in JavaScript is performed automatically and invisibly to us. We create primitives, objects, functions… All that takes memory. The main concept of memory management in JavaScript is reachability.",
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
              "JavaScript Garbage Collection",
              "https://javascript.info/garbage-collection",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "Memory Management in JavaScript",
              "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Memory_Management",
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
