// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/done_btn.dart';
import 'package:map_app_task/view/pages/roadmap/shared_pref.dart';

class PythonLevel3 extends StatefulWidget {
   final double initialPercentage;
  final void Function(double) updatePercentage;
  final int level;
  final Function(int) onLevelComplete;

  const PythonLevel3({
    Key? key,
    required this.initialPercentage,
    required this.updatePercentage,
    required this.level,
    required this.onLevelComplete,
  }) : super(key: key);

  @override
  State<PythonLevel3> createState() => _PythonLevel3State();
}

class _PythonLevel3State extends State<PythonLevel3> {
   late double percentage;
  bool isButtonDisabled = false;
  Set<String> completedLevels = {};
  bool isLevelComplete = false;

  
//  @override
//   void initState() {
//     super.initState();
//     percentage = widget.initialPercentage;
//      if (completedLevels.contains(widget.level)) {
//     setState(() {
//       isButtonDisabled = true;
//     });
//   }
//   SharedPref.init().then((_) {
//       setState(() {
//         isButtonDisabled = SharedPref.getBool('isButtonDisabled${widget.level}');
//       });
//     });
//   }

  

//   void _updatePercentage() async {
//   if (!isButtonDisabled) {
//     print('Updating percentage for Level ${widget.level}');
//     setState(() {
//       isButtonDisabled = true;
//       completedLevels.add(widget.level);
//       isLevelComplete = true;
//     });
    
//     double newPercentage = percentage ;
//     setState(() {
//       percentage = newPercentage;
//     });

//     widget.updatePercentage(percentage);

//     await SharedPref.setBool('isButtonDisabled${widget.level}', true);
//     widget.onLevelComplete(widget.level);

//     print('Percentage updated for Level ${widget.level}: ${newPercentage.toStringAsFixed(2)}%');
//   }
// }

//chaneg
 @override
  void initState() {
    super.initState();
    final levelKey = 'PythonLevel${widget.level}'; // Unique key for each level
    percentage = widget.initialPercentage;
    if (completedLevels.contains(levelKey)) {
      setState(() {
        isButtonDisabled = true;
      });
    }
    SharedPref.init().then((_) {
      setState(() {
        isButtonDisabled = SharedPref.getBool('$levelKey-isButtonDisabled');
      });
    });
  }

  void _updatePercentage() async {
    final levelKey = 'PythonLevel${widget.level}'; // Unique key for each level
    if (!isButtonDisabled) {
      setState(() {
        isButtonDisabled = true;
        completedLevels.add(levelKey);
        isLevelComplete = true;
      });

      widget.updatePercentage(percentage);

      await SharedPref.setBool('$levelKey-isButtonDisabled', true);
      widget.onLevelComplete(widget.level);
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
                "Level: ${widget.level}",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                      decoration: TextDecoration.underline,
                    ),
              ),
              const SizedBox(
                height: 01,
              ),
              Text(
                "Advanced Topics",
                style: Theme.of(context).textTheme.headline3!.copyWith(
                      decoration: TextDecoration.underline,
                    ),
              ),
              const SizedBox(
                height: 01,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "A data structure is a named Now that you have covered the basics of Python, let’s move on to some advanced topics. In this section, you will be learning about things like OOP, Lambdas, Decorators, Iterators, Modules, and more.",
                  style: Theme.of(context).textTheme.subtitle1,
                  textAlign: TextAlign.justify,
                ),
              ),
              const SizedBox(
                height: 10,
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
