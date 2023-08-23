// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class ArrowFunction extends StatefulWidget {
  const ArrowFunction({super.key});

  @override
  State<ArrowFunction> createState() => _ArrowFunctionState();
}

class _ArrowFunctionState extends State<ArrowFunction> {

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
            Text("this in arrow functions", style: Theme.of(context).textTheme.headline2,
            textAlign: TextAlign.justify,),
            const SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "The keyword this when used in an arrow function refers to the parent object.",
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
              "this keyword and arrow function",
              "https://stackoverflow.com/questions/66518020/javascript-this-keyword-and-arrow-function",
            ),
            const SizedBox(
              height: 10,
            ),
           
          ],


        ),
      ),
    );
  }
}
