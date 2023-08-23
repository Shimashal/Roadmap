import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/done_btn.dart';
import 'package:map_app_task/res/components/launch_url.dart';
import 'package:map_app_task/res/components/levelsbtn.dart';
import 'package:map_app_task/utils/routes/route_name.dart';

class BasicsDart extends StatefulWidget {
  final double initialPercentage;
  final void Function(double) updatePercentage;

  const BasicsDart({
    Key? key,
    required this.initialPercentage,
    required this.updatePercentage,
  }) : super(key: key);

  @override
  State<BasicsDart> createState() => _BasicsDartState();
}

class _BasicsDartState extends State<BasicsDart> {
  late double percentage;
  bool isButtonDisabled = false;

  @override
  void initState() {
    super.initState();
    percentage = widget.initialPercentage;
  }

  Future<void> _launchUrl(String url) async {
    await LaunchUrl.launchUrl(url);
  }

 void _updatePercentage() {
  if (!isButtonDisabled) {
    setState(() {
      percentage += 0.1;
      isButtonDisabled = true;
    });
    widget.updatePercentage(percentage);
  }
}

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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Level: 01",
                style: Theme.of(context).textTheme.displayMedium!.copyWith(
                      decoration: TextDecoration.underline,
                    ),
              ),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Dart is an open-source, general-purpose, object-oriented programming language with C-style syntax developed by Google in 2011. The purpose of Dart programming is to create frontend user interfaces for web and mobile apps. It can also be used to build server and desktop applications.",
                  style: Theme.of(context).textTheme.titleMedium,
                  textAlign: TextAlign.justify,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Visit the following resources to learn more:',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              LaunchUrl.buildLink(
                context,
                "Dart Overview",
                "https://dart.dev/overview",
              ),
              const SizedBox(
                height: 10,
              ),
              LaunchUrl.buildLink(
                context,
                "What is Dart Programming?",
                "https://www.javatpoint.com/flutter-dart-programming",
              ),
              const SizedBox(
                height: 10,
              ),
              LaunchUrl.buildLink(
                context,
                "What is Dart?",
                "https://www.youtube.com/watch?v=sOSd6G1qXoY&ab_channel=ZeroToMastery",
              ),
              const SizedBox(
                height: 30,
              ),
              LevelBtn(
                onPress: () {
                  Navigator.pushNamed(context, RouteName.DartpadScreen);
                },
                title: 'Dart Pad',
              ),
              const SizedBox(
                height: 40,
              ),
              LevelBtn(
                onPress: () {
                  Navigator.pushNamed(context, RouteName.VariablesScreen);
                },
                title: 'Variables',
              ),
              const SizedBox(
                height: 40,
              ),
              LevelBtn(
                onPress: () {
                  Navigator.pushNamed(
                      context, RouteName.BuiltinTypesScreen);
                },
                title: 'Built-in Types',
              ),
              const SizedBox(
                height: 40,
              ),
              DoneBtn(
                onPress: _updatePercentage,
                title: 'Done',
                disabled: isButtonDisabled,
              ),
            ],
          ),
        ),
      ),
    );
  }
}