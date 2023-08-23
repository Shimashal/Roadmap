import 'package:flutter/material.dart';
class CircularProgressBar extends StatelessWidget {
  final double progress;
  final double radius;

  const CircularProgressBar({
    required this.progress,
    required this.radius,
  });

  @override
  Widget build(BuildContext context) {
    final int roundedProgress = (progress * 100).round();
    final bool isCompleted = roundedProgress >= 100;
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          width: radius * 4,
          height: radius * 3,
          child: CircularProgressIndicator(
            value: isCompleted ? 1.0 : progress,
            strokeWidth: 10.0,
            backgroundColor: Colors.grey[300],
            valueColor: const AlwaysStoppedAnimation<Color>(Colors.green),
          ),
        ),
        Text(
         // '${(progress * 100).toInt()}%', 
         isCompleted ? '100%' : '$roundedProgress%',
          style: const TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
