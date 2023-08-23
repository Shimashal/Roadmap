// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';
import 'package:map_app_task/res/components/levelsbtn.dart';
import 'package:map_app_task/utils/routes/route_name.dart';

class KeyedCollection extends StatefulWidget {
  const KeyedCollection({super.key});

  @override
  State<KeyedCollection> createState() => _KeyedCollectionState();
}

class _KeyedCollectionState extends State<KeyedCollection> {

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
              Text("Keyed Collections", style: Theme.of(context).textTheme.headline2,
              textAlign: TextAlign.justify,),
              const SizedBox(
                height: 20,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Keyed collections are data collections that are ordered by key not index. They are associative in nature. Map and set objects are keyed collections and are iterable in the order of insertion.",
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
                "Keyed collections",
                "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Keyed_collections",
              ),
              const SizedBox(
                height: 10,
              ),
              LaunchUrl.buildLink(
                context,
                "ES6 keyed collections- Maps and sets",
                "https://blog.logrocket.com/es6-keyed-collections-maps-and-sets/",
              ),
              const SizedBox(
                height: 10,
              ),
              LaunchUrl.buildLink(
                context,
                "How to use Keyed collections",
                "https://www.freecodecamp.org/news/how-to-use-javascript-collections-map-and-set/",
              ),
              const SizedBox(
                height: 10,
              ),
              LaunchUrl.buildLink(
                context,
                "Creating keyed collection",
                "https://www.youtube.com/watch?v=4UqSqF4foy4&feature=youtu.be&ab_channel=AllThingsJavaScript%2CLLC",
              ),
               const SizedBox(
                  height: 30,
                ),
                LevelBtn(
                  onPress: () {
                   Navigator.pushNamed(context, RouteName.mapkeyedCollections);
                  },
                  title: 'Map',
                ),
                const SizedBox(
                  height: 40,
                ),
                LevelBtn(
                  onPress: () {
                  Navigator.pushNamed(context, RouteName.weakMapkeyedCollections);
                  },
                  title: 'Weak Map',
                ),
                const SizedBox(
                  height: 40,
                ),
                LevelBtn(
                  onPress: () {
                   Navigator.pushNamed(context, RouteName.setKeyedCollections);
                  },
                  title: 'Set',
                ),
                const SizedBox(
                  height: 40,
                ),
                LevelBtn(
                  onPress: () {
                   Navigator.pushNamed(context, RouteName.weakSetkeyedCollections);
                  },
                  title: 'WeakSet',
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
