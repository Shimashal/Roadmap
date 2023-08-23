// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class JSXComponents extends StatefulWidget {
  const JSXComponents({super.key});

  @override
  State<JSXComponents> createState() => _JSXComponentsState();
}

class _JSXComponentsState extends State<JSXComponents> {

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
            Text("JSX", style: Theme.of(context).textTheme.headline2,
            textAlign: TextAlign.justify,),
            const SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "JSX stands for JavaScript XML. It allows writing HTML in JavaScript and converts the HTML tags into React elements.",
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
              "Writing markup with JSX",
              "https://react.dev/learn/writing-markup-with-jsx",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "JavaScript in JSX with Curly Braces",
              "https://react.dev/learn/javascript-in-jsx-with-curly-braces",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "JSX in React – Explained with Examples",
              "https://www.freecodecamp.org/news/jsx-in-react-introduction/",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "JSX in React on w3school",
              "https://www.w3schools.com/react/react_jsx.asp",
            ),
            
             
          ],

        ),
      ),
    );
  }
}
