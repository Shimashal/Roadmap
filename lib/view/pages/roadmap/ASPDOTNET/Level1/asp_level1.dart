  // ignore_for_file: deprecated_member_use

  import 'package:flutter/material.dart';
  import 'package:map_app_task/res/components/done_btn.dart';
  import 'package:map_app_task/res/components/launch_url.dart';
  import 'package:map_app_task/view/pages/roadmap/shared_pref.dart';

  class ASPLevel1 extends StatefulWidget {
    final double initialPercentage;
    final void Function(double) updatePercentage;
    final int level;
    final Function(int) onLevelComplete;

    const ASPLevel1({
      Key? key,
      required this.initialPercentage,
      required this.updatePercentage,
      required this.level,
      required this.onLevelComplete,
    }) : super(key: key);

    @override
    State<ASPLevel1> createState() => _ASPLevel1State();
  }

  class _ASPLevel1State extends State<ASPLevel1> {
    late double percentage;
    bool isButtonDisabled = false;
    Set<String> completedLevels = {};
    bool isLevelComplete = false;

    
  @override
  void initState() {
    super.initState();
    final levelKey = 'ASPLevel${widget.level}'; // Unique key for each level
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
    final levelKey = 'ASPLevel${widget.level}'; // Unique key for each level
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
                  "C#",
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
                    "C# (pronounced “C-sharp”) is a general-purpose, object-oriented programming language developed by Microsoft. It is part of the .NET family of languages and is used to build a wide range of applications, from web and mobile applications to games and cloud services. C# is a statically-typed language, which means that the type of a variable must be specified when it is declared, and that the type of a value cannot be changed after it has been assigned. C# also supports object-oriented programming, which means that it provides features such as encapsulation, inheritance, and polymorphism. C# is a popular language for building .NET applications, and it is used by many large companies and organizations, including Microsoft, Dell, and IBM. It is a versatile language that can be used for a wide range of purposes, and it is well-suited for building scalable and maintainable software systems.",
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
                const SizedBox(
                  height: 10,
                ),
                LaunchUrl.buildLink(
                  context,
                  "C Sharp Basics",
                  "https://www.codecademy.com/catalog/language/c-sharp",
                ),
                const SizedBox(
                  height: 10,
                ),
                LaunchUrl.buildLink(
                  context,
                  "C# Tutorials",
                  "https://dotnettutorials.net/course/csharp-dot-net-tutorials/",
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
