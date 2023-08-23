// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class ScopefunctionStack extends StatefulWidget {
  const ScopefunctionStack({super.key});

  @override
  State<ScopefunctionStack> createState() => _ScopefunctionStackState();
}

class _ScopefunctionStackState extends State<ScopefunctionStack> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text("Scope and function stack", style: Theme.of(context).textTheme.headline3,
              textAlign: TextAlign.center,),
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
                            'Scope\n',
                        style: Theme.of(context).textTheme.headline3,
                        children: [
                          TextSpan(
                            text: 'A space or environment in which a particular variable or function can be accessed or used. Accessibility of this variable or function depends on where it is defined.\n',
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                           TextSpan(
                            text: 'JavaScript has the following kinds of scopes:\n',
                            style: Theme.of(context).textTheme.subtitle1,
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
                            text: 'Global scope: The default scope for all code running in script mode.\n',
                            style: Theme.of(context).textTheme.subtitle1,
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
                            text: 'Module scope: The scope for code running in module mode.\n',
                            style: Theme.of(context).textTheme.subtitle1,
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
                            text: 'Function scope: The scope created with a function.\n',
                            style: Theme.of(context).textTheme.subtitle1,
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
                            text: 'Block scope: The scope created with a pair of curly braces (a block).\n',
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
               
                Align(
                alignment: Alignment.centerLeft,
                child: RichText(
                  textAlign: TextAlign.justify,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text:
                            'Function Stack (Call stack)\n',
                        style: Theme.of(context).textTheme.headline3,
                        children: [
                          
                          TextSpan(
                            text: 'The function stack is how the interpreter keeps track of its place in a script that calls multiple functions, like which function is currently executing and which functions within that function are being called.\n',
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
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
                "Function stack (call stack) - MDN",
                "https://developer.mozilla.org/en-US/docs/Glossary/Call_stack",
              ),
              
              const SizedBox(
                height: 10,
              ),
              LaunchUrl.buildLink(
                context,
                "Kinds of Scope - MDN",
                "https://developer.mozilla.org/en-US/docs/Glossary/Scope",
              ),
              const SizedBox(
                height: 20,
              ),
            ],
      
          ),
        ),
      ),
    );
  }
}
