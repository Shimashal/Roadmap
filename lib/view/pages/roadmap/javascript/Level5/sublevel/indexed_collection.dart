// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';
import 'package:map_app_task/res/components/levelsbtn.dart';
import 'package:map_app_task/utils/routes/route_name.dart';

class IndexedCollections extends StatefulWidget {
  const IndexedCollections({super.key});

  @override
  State<IndexedCollections> createState() => _IndexedCollectionsState();
}

class _IndexedCollectionsState extends State<IndexedCollections> {

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
            Text("Indexed collections", style: Theme.of(context).textTheme.headline2,
            textAlign: TextAlign.justify,),
            const SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Indexed Collections are collections that have numeric indices i.e. the collections of data that are ordered by an index value. In JavaScript, an array is an indexed collection. An array is an ordered set of values that has a numeric index.",
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
              "Indexed Collections",
              "https://www.geeksforgeeks.org/javascript-indexed-collections/",
            ),
             const SizedBox(
                height: 10,
              ),
               LaunchUrl.buildLink(
              context,
              "What is Indexed collections?",
              "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Indexed_collections",
            ),
            const SizedBox(
                height: 10,
              ),
               LaunchUrl.buildLink(
              context,
              "Indexed collections in JavaScript",
              "https://www.tutorialspoint.com/indexed-collections-in-javascript",
            ),
            const SizedBox(
                height: 10,
              ),
               LaunchUrl.buildLink(
              context,
              "Javascript Arrays",
              "https://www.youtube.com/watch?v=XYq9QpgAx8g&feature=youtu.be",
            ),
             const SizedBox(
                height: 40,
              ),
              LevelBtn(
                onPress: () {
                  Navigator.pushNamed(context, RouteName.arrayCollections);
                },
                title: 'Arrays',
              ),
               const SizedBox(
                height: 40,
              ),
              LevelBtn(
                onPress: () {
                  Navigator.pushNamed(context, RouteName.typedArrayCollections);
                },
                title: 'Typed Arrays',
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
