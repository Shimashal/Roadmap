// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/done_btn.dart';
import 'package:map_app_task/res/components/launch_url.dart';
import 'package:map_app_task/res/components/levelsbtn.dart';
import 'package:map_app_task/utils/routes/route_name.dart';
import 'package:map_app_task/view/pages/roadmap/shared_pref.dart';

class BasicsJavaNine extends StatefulWidget {
  final double initialPercentage;
  final void Function(double) updatePercentage;
  final int level;
  final Function(int) onLevelComplete;

  const BasicsJavaNine({
    Key? key,
    required this.initialPercentage,
    required this.updatePercentage,
    required this.level, required this.onLevelComplete,
  }) : super(key: key);

  @override
  State<BasicsJavaNine> createState() => _BasicsJavaNineState();
}

class _BasicsJavaNineState extends State<BasicsJavaNine> {
  late double percentage;
  bool isButtonDisabled = false;
  Set<String> completedLevels = {};
  bool isLevelComplete = false;
  bool hasVisitedAssignOp = false;
  bool hasVisitedComparison = false;
  bool hasVisitedArithmetic = false;
  bool hasVisitedBitwise = false;
  bool hasVisitedLogical = false;
  bool hasVisitedBigInt = false;
  bool hasVisitedStringOp = false;
  bool hasVisitedConditionalOp = false;
  bool hasVisitedCommaOp = false;
  bool hasVisitedUnaryOp = false;
  bool hasVisitedRelationalOp = false;

 @override
  void initState() {
    super.initState();
    final levelKey = 'JSLevel${widget.level}'; // Unique key for each level
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
    final levelKey = 'JSLevel${widget.level}'; // Unique key for each level
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

  void _markSectionVisited(String section) async {
    await SharedPref.setBool(section, true);

    setState(() {
      if (section == 'hasVisitedAssignOp') {
        hasVisitedAssignOp = true;
      } else if (section == 'hasVisitedComparison') {
        hasVisitedComparison = true;
      }
       else if (section == 'hasVisitedArithmetic') {
        hasVisitedArithmetic = true;
      }
       else if (section == 'hasVisitedBitwise') {
        hasVisitedBitwise = true;
      }
      else if (section == 'hasVisitedLogical') {
        hasVisitedLogical = true;
      }
       else if (section == 'hasVisitedBigInt') {
        hasVisitedBigInt = true;
      }
       else if (section == 'hasVisitedStringOp') {
        hasVisitedStringOp = true;
      }
      else if (section == 'hasVisitedConditionalOp') {
        hasVisitedConditionalOp= true;
      }
       else if (section == 'hasVisitedCommaOp') {
        hasVisitedCommaOp = true;
      }
       else if (section == 'hasVisitedUnaryOp') {
        hasVisitedUnaryOp = true;
      }
       else if (section == 'hasVisitedRelationalOp') {
        hasVisitedRelationalOp = true;
      }
    });
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
                "Expressions and Operators",
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
                  "At a high level, an expression is a valid unit of code that resolves to a value. There are two types of expressions: those that have side effects (such as assigning values) and those that purely evaluate. The expression x = 7 is an example of the first type. This expression uses the = operator to assign the value seven to the variable x. The expression itself evaluates to 7. The expression 3 + 4 is an example of the second type. This expression uses the + operator to add 3 and 4 together and produces a value, 7. However, if it’s not eventually part of a bigger construct (for example, a variable declaration like const z = 3 + 4), its result will be immediately discarded — this is usually a programmer mistake because the evaluation doesn’t produce any effects. As the examples above also illustrate, all complex expressions are joined by operators, such as = and +.",
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
                  'Visit the following resources to learn more:',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              LaunchUrl.buildLink(
                context,
                "Expressions and operators",
                "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Expressions_and_Operators",
              ),
              
              const SizedBox(
                height: 30,
              ),
              LevelBtn(
                onPress: () {
                 Navigator.pushNamed(context, RouteName.assignOperator);
                 _markSectionVisited('hasVisitedAssignOp');
                },
                title: 'Assignment Operators',

              ),
              const SizedBox(
                height: 40,
              ),
              LevelBtn(
                onPress: () {
                  Navigator.pushNamed(context, RouteName.compareOperator);
                  _markSectionVisited('hasVisitedComparison');
                },
                title: 'Comparison Operators',
                disabled: !hasVisitedAssignOp,
              ),
              const SizedBox(
                height: 40,
              ),
              LevelBtn(
                onPress: () {
                  Navigator.pushNamed(context, RouteName.arithmeticOperator);
                  _markSectionVisited('hasVisitedArithmetic');
                },
                title: 'Arithmetic Operators',
                disabled: !hasVisitedComparison,
              ),
              const SizedBox(
                height: 40,
              ),
              LevelBtn(
                onPress: () {
                Navigator.pushNamed(context, RouteName.bitwiseOperator);
                _markSectionVisited('hasVisitedBitwise');
                },
                title: 'Bitwise operators',
                disabled: !hasVisitedArithmetic,
              ),
              const SizedBox(
                height: 40,
              ),
              LevelBtn(
                onPress: () {
                  Navigator.pushNamed(context, RouteName.logicalOperator);
                  _markSectionVisited('hasVisitedLogical');
                },
                title: 'Logical Operators',
                disabled: !hasVisitedBitwise,
              ),
              const SizedBox(
                height: 40,
              ),
              LevelBtn(
                onPress: () {
                 Navigator.pushNamed(context, RouteName.bigIntOperator);
                 _markSectionVisited('hasVisitedBigInt');
                },
                title: 'BigInt Operators',
                disabled: !hasVisitedLogical,
              ),
              const SizedBox(
                height: 40,
              ),
              LevelBtn(
                onPress: () {
                  Navigator.pushNamed(context, RouteName.stringOperator);
                  _markSectionVisited('hasVisitedStringOp');
                },
                title: 'String Operators',
                disabled: !hasVisitedBigInt,
              ),
              const SizedBox(
                height: 40,
              ),
              LevelBtn(
                onPress: () {
                  Navigator.pushNamed(context, RouteName.conditionalOperator);
                  _markSectionVisited('hasVisitedConditionalOp');
                },
                title: 'Conditional Operators',
                disabled: !hasVisitedStringOp,
              ),
              const SizedBox(
                height: 40,
              ),
              LevelBtn(
                onPress: () {
                  Navigator.pushNamed(context, RouteName.commaOperator);
                  _markSectionVisited('hasVisitedCommaOp');
                },
                title: 'Comma Operators',
                disabled: !hasVisitedConditionalOp,
              ),
              const SizedBox(
                height: 40,
              ),
              LevelBtn(
                onPress: () {
                  Navigator.pushNamed(context, RouteName.unaryOperator);
                  _markSectionVisited('hasVisitedUnaryOp');
                },
                title: 'Unary Operators',
                disabled: !hasVisitedCommaOp,
              ),
              const SizedBox(
                height: 40,
              ),
              LevelBtn(
                onPress: () {
                  Navigator.pushNamed(context, RouteName.relationalOperator);
                  _markSectionVisited('hasVisitedRelationalOp');
                },
                title: 'Relational Operators',
                disabled: !hasVisitedUnaryOp,
              ),
              const SizedBox(
                height: 40,
              ),
              DoneBtn(
                onPress: _updatePercentage,
                title: 'Done',
                disabled: isButtonDisabled || !hasVisitedRelationalOp,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
