import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class SQLite_Storage extends StatefulWidget {
  const SQLite_Storage({super.key});

  @override
  State<SQLite_Storage> createState() => _SQLite_StorageState();
}

class _SQLite_StorageState extends State<SQLite_Storage> {
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
            Text("SQLite", style: Theme.of(context).textTheme.displayLarge),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "SQLite is an open-source, lightweight relational database management system (RDBMS) used to store and manage data. It is written in C and self-contained, meaning it does not require a separate server process or system. SQLite is commonly used in mobile applications, embedded systems, and web browsers and is also supported by many programming languages. It is a popular choice for databases because it is easy to use and does not require a lot of setup or configuration.",
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
              "sqflite - pub.dev package ",
              "https://pub.dev/packages/sqflite",
            ),
             
          ],
        ),
      ),
    );
  }
}
