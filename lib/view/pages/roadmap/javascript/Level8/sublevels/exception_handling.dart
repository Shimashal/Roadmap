// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';
import 'package:map_app_task/res/components/levelsbtn.dart';
import 'package:map_app_task/utils/routes/route_name.dart';

class ExceptionHandlings extends StatefulWidget {
  const ExceptionHandlings({super.key});

  @override
  State<ExceptionHandlings> createState() => _ExceptionHandlingsState();
}

class _ExceptionHandlingsState extends State<ExceptionHandlings> {

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
              Text("Exception Handling", style: Theme.of(context).textTheme.headline2,
              textAlign: TextAlign.justify,),
              const SizedBox(
                height: 20,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "In JavaScript, all exceptions are simply objects. While the majority of exceptions are implementations of the global Error class, any old object can be thrown. With this in mind, there are two ways to throw an exception: directly via an Error object, and through a custom object. (excerpt from Rollbar)",
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
                "Throwing Exceptions in JavaScript",
                "https://rollbar.com/guides/javascript/how-to-throw-exceptions-in-javascript/",
              ),
              const SizedBox(
                height: 10,
              ),
              LaunchUrl.buildLink(
                context,
                "try, catch, finally, throw (video)",
               "https://www.youtube.com/watch?v=cftftueq-10",
              ),
              const SizedBox(
                  height: 40,
                ),
                LevelBtn(
                  onPress: () {
                 Navigator.pushNamed(context, RouteName.throwState);
                  },
                  title: 'throw statement',
                ),
                const SizedBox(
                  height: 40,
                ),
                LevelBtn(
                  onPress: () {
                 Navigator.pushNamed(context, RouteName.tryCatchFinally);
                  },
                  title: 'try/ catch / finally',
                ),
                // const SizedBox(
                //   height: 40,
                // ),
                // LevelBtn(
                //   onPress: () {
                //  Navigator.pushNamed(context, RouteName.utlizingError);
                //   },
                //   title: 'Utilizing Error Objects',
                // ),
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
