// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class VarNamingJava extends StatefulWidget {
  const VarNamingJava({super.key});

  @override
  State<VarNamingJava> createState() => _VarNamingJavaState();
}

class _VarNamingJavaState extends State<VarNamingJava> {

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
            Text("Naming Rules", style: Theme.of(context).textTheme.headline2,
            textAlign: TextAlign.justify,),
            const SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "A variable name should accurately identify your variable. When you create good variable names, your JavaScript code becomes easier to understand and easier to work with. Properly naming variables is really important. JavaScript also has some rules when it comes to naming variables; read about these rules through the links below.",
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
              "JavaScript Variable Naming Tips - CodeGuage",
              "https://www.codeguage.com/courses/js/variables#Tips_for_naming_variables",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "Understanding Variables in JavaScript",
              "https://www.informit.com/articles/article.aspx?p=131025&seqNum=3",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "Naming JavaScript Variables",
              "https://www.dummies.com/article/technology/programming-web-design/javascript/naming-javascript-variables-142522/",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "JavaScript Naming Conventions",
              "https://www.robinwieruch.de/javascript-naming-conventions/",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "Naming JavaScript Variables",
              "https://google.github.io/styleguide/jsguide.html",
            ),
            
          ],

        ),
      ),
    );
  }
}
