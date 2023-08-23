import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class BuiltinObjects extends StatefulWidget {
  const BuiltinObjects({super.key});

  @override
  State<BuiltinObjects> createState() => _BuiltinObjectsState();
}

class _BuiltinObjectsState extends State<BuiltinObjects> {
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
            Text("Built-in objects",
                style: Theme.of(context).textTheme.displayLarge),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: RichText(
                textAlign: TextAlign.justify,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text:
                          'Built-in objects, or “global objects”, are those built into the language specification itself. There are numerous built-in objects with the JavaScript language, all of which are accessible at the global scope. Some examples are:\n',
                      style: Theme.of(context).textTheme.titleMedium,
                      children: [
                        const WidgetSpan(
                          child: Padding(
                            padding: EdgeInsets.only(right: 5),
                            child: Icon(
                              Icons.circle,
                              size: 8,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        TextSpan(
                          text: 'Number\n',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const WidgetSpan(
                          child: Padding(
                            padding: EdgeInsets.only(right: 5),
                            child: Icon(
                              Icons.circle,
                              size: 8,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        TextSpan(
                          text: 'Math\n',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const WidgetSpan(
                          child: Padding(
                            padding: EdgeInsets.only(right: 5),
                            child: Icon(
                              Icons.circle,
                              size: 8,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        TextSpan(
                          text: 'Date\n',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const WidgetSpan(
                          child: Padding(
                            padding: EdgeInsets.only(right: 5),
                            child: Icon(
                              Icons.circle,
                              size: 8,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        TextSpan(
                          text: 'String\n',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const WidgetSpan(
                          child: Padding(
                            padding: EdgeInsets.only(right: 5),
                            child: Icon(
                              Icons.circle,
                              size: 8,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        TextSpan(
                          text: 'Error\n',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const WidgetSpan(
                          child: Padding(
                            padding: EdgeInsets.only(right: 5),
                            child: Icon(
                              Icons.circle,
                              size: 8,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        TextSpan(
                          text: 'Function\n',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const WidgetSpan(
                          child: Padding(
                            padding: EdgeInsets.only(right: 5),
                            child: Icon(
                              Icons.circle,
                              size: 8,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        TextSpan(
                          text: 'Boolean\n',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 1,
            ),
            LaunchUrl.buildLink(
              context,
              "Built-in Objects",
              "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "Standard built-in objects",
              "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects",
            ),
            const SizedBox(
              height: 10,
            ),
             LaunchUrl.buildLink(
              context,
              "JavaScript Built-in Objects",
              "https://www.tutorialride.com/javascript/javascript-built-in-objects.htm",
            ),
            const SizedBox(
              height: 10,
            ),
             LaunchUrl.buildLink(
              context,
              "Built-in Objects",
              "https://www.scaler.com/topics/javascript/javascript-built-in-objects/",
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
