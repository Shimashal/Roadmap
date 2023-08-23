import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class OOPDart extends StatefulWidget {
  const OOPDart({super.key});

  @override
  State<OOPDart> createState() => _OOPDartState();
}

class _OOPDartState extends State<OOPDart> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
     body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text("OOP", style: Theme.of(context).textTheme.displayLarge),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Object-oriented programming (OOP) is a programming paradigm that is based on the concept of “objects,” which are instances of a class. In OOP, a class is a blueprint for creating objects, which have both data (attributes) and behavior (methods). The main idea behind OOP is to model real-world objects and their interactions, making it well-suited for creating complex and large-scale software systems.",
                style: Theme.of(context).textTheme.titleMedium,
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Visit the following resources to learn more:',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
             LaunchUrl.buildLink(
              context,
              "Discover Object Oriented Programming",
              "https://blog.hubspot.com/website/object-oriented-programming",
            ),
            const SizedBox(
              height: 20,
            ),
            LaunchUrl.buildLink(
              context,
              "Software Development Tutorial - What is object-oriented language?s",
              "https://www.youtube.com/watch?app=desktop&v=SS-9y0H3Si8&ab_channel=LinkedInLearning",
            ),
          ],
        ),
      ),
    );
  }
}
