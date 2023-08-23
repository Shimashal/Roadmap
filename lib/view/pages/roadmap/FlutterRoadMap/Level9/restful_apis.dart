import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class RestfulAPI extends StatefulWidget {
  const RestfulAPI({super.key});

  @override
  State<RestfulAPI> createState() => _RestfulAPIState();
}

class _RestfulAPIState extends State<RestfulAPI> {
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
            Text("REST", style: Theme.of(context).textTheme.displayLarge),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "REST, or REpresentational State Transfer, is an architectural style for providing standards between computer systems on the web, making it easier for systems to communicate with each other.",
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
              height: 20,
            ),
            LaunchUrl.buildLink(
              context,
              "What is REST?",
              "https://www.codecademy.com/article/what-is-rest",
            ),
             const SizedBox(
              height: 20,
            ),
            LaunchUrl.buildLink(
              context,
              "What is a REST API?",
              "https://www.redhat.com/en/topics/api/what-is-a-rest-api",
            ),
            const SizedBox(
              height: 20,
            ),
            LaunchUrl.buildLink(
              context,
              "Roy Fieldings dissertation chapter, Representational State Transfer (REST)",
              "https://www.ics.uci.edu/~fielding/pubs/dissertation/rest_arch_style.htm",
            ),
            const SizedBox(
              height: 20,
            ),
            LaunchUrl.buildLink(
              context,
              "Learn REST: A RESTful Tutorial",
              "https://restapitutorial.com/",
            ),
          ],
        ),
      ),
    );
  }
}
