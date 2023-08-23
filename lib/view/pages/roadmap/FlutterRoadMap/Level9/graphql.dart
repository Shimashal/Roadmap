import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class GraphQL extends StatefulWidget {
  const GraphQL({super.key});

  @override
  State<GraphQL> createState() => _GraphQLState();
}

class _GraphQLState extends State<GraphQL> {
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
            Text("GraphQL", style: Theme.of(context).textTheme.displayLarge),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "GraphQL is a query language for your API that allows clients to request exactly the data they need, and nothing more. It was developed by Facebook and released as open source in 2015.",
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
              "GraphQL official website ",
              "https://graphql.org/",
            ),
             const SizedBox(
              height: 20,
            ),
            LaunchUrl.buildLink(
              context,
              "How to GraphQL ",
              "https://www.howtographql.com/",
            ),
          ],
        ),
      ),
    );
  }
}
