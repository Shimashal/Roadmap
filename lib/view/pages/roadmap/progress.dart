import 'package:flutter/material.dart';

class CustomProgressBar extends StatelessWidget {
  final double width;
  final double height;
  final double progress;
  final int numSteps;

  CustomProgressBar({
    required this.width,
    required this.height,
    required this.progress,
    required this.numSteps,
  }) : assert(numSteps > 1 &&
            numSteps <= 100); // Ensure the numSteps is between 2 and 100

  @override
  Widget build(BuildContext context) {
    double clampedProgress =
        progress.clamp(0.0, 1.0); // Ensure progress is within the range [0, 1]
    int currentStep = (clampedProgress * (numSteps - 1)).round();
    double currentStepPercentage = (currentStep / (numSteps - 1)) * 100.0;
    bool isCompleted = currentStepPercentage == 100.0;

    List<Widget> stepWidgets = List.generate(numSteps, (index) {
      double stepWidth = (width / (numSteps - 1));
      bool isFilled = index <= currentStep;
      return Container(
        width: stepWidth,
        height: height,
        color:
            isFilled ? Colors.green : (index == 0 ? Colors.red : Colors.grey),
      );
    });

    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: stepWidgets),
          ),
          if (isCompleted)
            Center(
              child: Text(
                'Levels Completed',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          Positioned(
            left: (width / (numSteps - 1)) * currentStep,
            child: Text(
              '${currentStepPercentage.toStringAsFixed(0)}%',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
