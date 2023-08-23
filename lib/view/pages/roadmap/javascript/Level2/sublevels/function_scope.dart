// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class FunctionScope extends StatefulWidget {
  const FunctionScope({super.key});

  @override
  State<FunctionScope> createState() => _FunctionScopeState();
}

class _FunctionScopeState extends State<FunctionScope> {

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
            Text("Function Scope", style: Theme.of(context).textTheme.headline2,
            textAlign: TextAlign.justify,),
            const SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "When a variable is declared inside a function, it is only accessible within that function and cannot be used outside that function.",
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
              "JavaScript Scope",
              "https://www.w3schools.com/js/js_scope.asp",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "Function Scope & Block Scope in JS",
              "https://medium.com/nerd-for-tech/function-scope-block-scope-in-js-d29c8e7cd216",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "All about Functions and Scopes in JavaScript",
              "https://www.geeksforgeeks.org/all-about-functions-and-scopes-in-javascript/",
            ),
          ],

        ),
      ),
    );
  }
}
