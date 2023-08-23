// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class Memoryallocation extends StatefulWidget {
  const Memoryallocation({super.key});

  @override
  State<Memoryallocation> createState() => _MemoryallocationState();
}

class _MemoryallocationState extends State<Memoryallocation> {
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
            Text("Memory Allocation", style: Theme.of(context).textTheme.headline1),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Memory allocation is the process of reserving a portion of the device’s memory for the use of your app. The memory allocation in Flutter is managed by the Dart virtual machine, which uses a garbage collector to automatically manage the memory used by the app.",
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
                'In Flutter, the widgets in the app’s widget tree represent the state of the app. When the state changes, the widgets are rebuilt and the previous state’s memory is automatically collected by the garbage collector.',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Visit the following links:',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            LaunchUrl.buildLink(
              context,
              "Using the Memory view",
              "https://docs.flutter.dev/tools/devtools/memory",
            ),
          ],
        ),
      ),
    );
  }
}
