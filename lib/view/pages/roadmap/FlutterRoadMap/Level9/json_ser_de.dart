import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class JSON_API extends StatefulWidget {
  const JSON_API({super.key});

  @override
  State<JSON_API> createState() => _JSON_APIState();
}

class _JSON_APIState extends State<JSON_API> {
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
            Text("Web Sockets", style: Theme.of(context).textTheme.displayLarge),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "JSON (JavaScript Object Notation) is a lightweight data interchange format that is easy for humans to read and write and easy for machines to parse and generate. In Flutter, JSON is used for transmitting data between the client and server, typically over an HTTP connection.",
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
              "JSON and serialization",
              "https://docs.flutter.dev/data-and-backend/json",
            ),
             const SizedBox(
              height: 20,
            ),
            LaunchUrl.buildLink(
              context,
              "Using JSON",
              "https://dart.dev/guides/json",
            ),
          ],
        ),
      ),
    );
  }
}
