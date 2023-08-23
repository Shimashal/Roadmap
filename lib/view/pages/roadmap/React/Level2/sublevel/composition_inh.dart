// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class CompositionvsInheritance extends StatefulWidget {
  const CompositionvsInheritance({super.key});

  @override
  State<CompositionvsInheritance> createState() => _CompositionvsInheritanceState();
}

class _CompositionvsInheritanceState extends State<CompositionvsInheritance> {

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
            Text("Composition vs Inheritance", style: Theme.of(context).textTheme.headline2,
            textAlign: TextAlign.center,),
            const SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "React has a powerful composition model, and it is recommended to use composition instead of inheritance to reuse code between components.",
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
              "Composition vs Inheritance",
              "https://legacy.reactjs.org/docs/composition-vs-inheritance.html",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "How to perform component composition in React",
              "https://www.robinwieruch.de/react-component-composition/",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "Achieving Reusability With React Composition",
              "https://formidable.com/blog/2021/react-composition/",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "Passing JSX as children",
              "https://react.dev/learn/passing-props-to-a-component#passing-jsx-as-children",
            ),
            
             
          ],

        ),
      ),
    );
  }
}
