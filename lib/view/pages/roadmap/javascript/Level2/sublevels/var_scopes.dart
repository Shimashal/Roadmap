// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';
import 'package:map_app_task/res/components/levelsbtn.dart';
import 'package:map_app_task/utils/routes/route_name.dart';

class VarScopes extends StatefulWidget {
  const VarScopes({super.key});

  @override
  State<VarScopes> createState() => _VarScopesState();
}

class _VarScopesState extends State<VarScopes> {

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
              Text("Scopes", style: Theme.of(context).textTheme.headline2,
              textAlign: TextAlign.justify,),
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
                            'In JavaScript, scope refers to the visibility of a variable or how it can be used after it is declared. The scope of a variable depends on the keyword that was used to declare it.\n',
                        style: Theme.of(context).textTheme.subtitle1,
                        children: [
                          TextSpan(
                            text:
                                'The three types of Scope are Global Scope, Function Scope, and Block Scope. Before ES6 (2015), JavaScript had only Global Scope and Function Scope with the var keyword. ES6 introduced let and const which allow Block Scope in JavaScript.\n',
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                          TextSpan(
                            text: 'Global Scope: Variables declared outside any function or curly braces ’{}’ have Global Scope, and can be accessed from anywhere within the same Javascript code. var, let and const all provide this Scope.\n',
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                          TextSpan(
                            text: 'Function Scope: Variables declared within a function can only be used within that same function. Outside that function, they are undefined. var, let and const all provide this Scope.\n',
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                          TextSpan(
                            text: 'Block Scope: A block is any part of JavaScript code bounded by ’{}‘. Variables declared within a block can not be accessed outside that block. This Scope is only provided by the let and const keywords. If you declare a variable within a block using the var keyword, it will NOT have Block Scope.\n',
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Visit the following resource to learn more:',
                  style: Theme.of(context).textTheme.subtitle1,
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
                "javascript scope",
                "https://wesbos.com/javascript/03-the-tricky-bits/scope",
              ),
              const SizedBox(
                  height: 40,
                ),
                LevelBtn(
                  onPress: () {
                   Navigator.pushNamed(context, RouteName.blockScopes);
                  },
                  title: 'Block',
                ),
                const SizedBox(
                  height: 40,
                ),
                LevelBtn(
                  onPress: () {
                   Navigator.pushNamed(context, RouteName.functionScopes);
                  },
                  title: 'Function ',
                ),
                 const SizedBox(
                  height: 40,
                ),
                LevelBtn(
                  onPress: () {
                   Navigator.pushNamed(context, RouteName.globalScopes);
                  },
                  title: 'Global  ',
                ),
                const SizedBox(
                  height: 40,
                ),
               
            ],
      
          ),
        ),
      ),
    );
  }
}
