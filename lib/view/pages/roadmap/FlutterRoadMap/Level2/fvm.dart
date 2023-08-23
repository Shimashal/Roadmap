import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class FVMLevel2 extends StatefulWidget {
  const FVMLevel2({super.key});

  @override
  State<FVMLevel2> createState() => _FVMLevel2State();
}

class _FVMLevel2State extends State<FVMLevel2> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
     body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text("FVM (Flutter Version Manager)", style: Theme.of(context).textTheme.displayLarge),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Flutter version manager is a tool used to manage different versions of Flutter SDK on a developer’s machine. Flutter is a popular open-source mobile application development framework, and its SDK is updated frequently with new features, bug fixes, and improvements. However, sometimes developers need to work with older versions of Flutter due to various reasons like compatibility issues or project requirements.",
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
              "Flutter Version Manager - Official Website",
              "https://fvm.app/",
            ),
           
          ],
        ),
      ),
    );
  }
}
