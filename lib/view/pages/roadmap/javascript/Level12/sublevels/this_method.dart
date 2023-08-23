// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class ThisMethod extends StatefulWidget {
  const ThisMethod({super.key});

  @override
  State<ThisMethod> createState() => _ThisMethodState();
}

class _ThisMethodState extends State<ThisMethod> {

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
            Text("this in a method", style: Theme.of(context).textTheme.headline2,
            textAlign: TextAlign.justify,),
            const SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Methods are properties of an object which are functions. The value of this inside a method is equal to the calling object. In simple words, this value is the object “before dot”, the one used to call the method.",
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
              "this in methods",
              "https://javascript.info/object-methods#this-in-methods",
            ),
            const SizedBox(
              height: 10,
            ),
             LaunchUrl.buildLink(
              context,
              "Short and clear post about the this keyword",
              "https://www.w3schools.com/js/js_this.asp",
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
