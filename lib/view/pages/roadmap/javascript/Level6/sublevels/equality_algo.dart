// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';
import 'package:map_app_task/res/components/levelsbtn.dart';
import 'package:map_app_task/utils/routes/route_name.dart';

class EqualityAlgorithm extends StatefulWidget {
  const EqualityAlgorithm({super.key});

  @override
  State<EqualityAlgorithm> createState() => _EqualityAlgorithmState();
}

class _EqualityAlgorithmState extends State<EqualityAlgorithm> {

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
              Text("Equality algorithms", style: Theme.of(context).textTheme.headline2,
              textAlign: TextAlign.justify,),
              const SizedBox(
                height: 20,
              ),
               Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Equality algorithms are used to perform equality comparisons of values or variables in JavaScript. Each equality algorithm works slightly differently, and the one you use depends on the type of comparison you want to make.',
                  style: Theme.of(context).textTheme.subtitle1,
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
                "Which JavaScript equality algorithm should you use?",
                "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Equality_comparisons_and_sameness",
              ),
              const SizedBox(
                  height: 40,
                ),
                LevelBtn(
                  onPress: () {
                  Navigator.pushNamed(context, RouteName.isLooselyEquals);
                  },
                  title: 'isLooselyEqual',
                ),
                const SizedBox(
                  height: 40,
                ),
                 LevelBtn(
                  onPress: () {
                  Navigator.pushNamed(context, RouteName.isstrictlyEquals);
                  },
                  title: 'isStrictlyEqual',
                ),
                 const SizedBox(
                  height: 40,
                ),
                 LevelBtn(
                  onPress: () {
                  Navigator.pushNamed(context, RouteName.samevalueZero);
                  },
                  title: 'SameValueZero',
                ),
                 const SizedBox(
                  height: 40,
                ),
                 LevelBtn(
                  onPress: () {
                 Navigator.pushNamed(context, RouteName.sameValue);
                  },
                  title: 'SameValue',
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
