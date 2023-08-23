// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class DefiningCallingFunctions extends StatefulWidget {
  const DefiningCallingFunctions({super.key});

  @override
  State<DefiningCallingFunctions> createState() => _DefiningCallingFunctionsState();
}

class _DefiningCallingFunctionsState extends State<DefiningCallingFunctions> {

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
              Text("Defining and Calling Functions", style: Theme.of(context).textTheme.headline3,
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
                            'Functions.\n',
                        style: Theme.of(context).textTheme.headline3,
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
                            text: 'JavaScript function declarations are made by using the function keyword.\n',
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
                            text: 'Functions can also be defined by saving function expressions to a variable. “Arrow” functions are commonly used in this way.\n',
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
                            'Calling\n',
                        style: Theme.of(context).textTheme.headline3,
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
                            text: 'When a function is defined, it is not yet executed.\n',
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
                            text: 'To call and invoke a function’s code, use the function’s name followed by parentheses: functionName().\n',
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
                "Defining Functions",
                "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Functions#defining_functions",
              ),
              const SizedBox(
                height: 10,
              ),
              LaunchUrl.buildLink(
                context,
                "Calling Functions",
                "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Functions#calling_functions",
              ),
              const SizedBox(
                height: 10,
              ),
              LaunchUrl.buildLink(
                context,
                "Function Definitions",
                "https://www.w3schools.com/js/js_function_definition.asp",
              ),
              const SizedBox(
                height: 10,
              ),
            ],
      
          ),
        ),
      ),
    );
  }
}
