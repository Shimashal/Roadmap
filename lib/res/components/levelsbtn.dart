// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/color.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class LevelBtn extends StatelessWidget {
  final String title;
  final VoidCallback onPress;
  final Color color;
  final Color textColor;
  final bool disabled;

  const LevelBtn({
    Key? key,
    required this.title,
    required this.onPress,
    this.color = AppColors.primaryColor,
    this.textColor = AppColors.primaryTextTextColor,
    this.disabled = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 300,
      child: OutlineGradientButton(
        gradient: LinearGradient(colors: [
          disabled ? AppColors.grayColor : color, // Change color for disabled button
          disabled ? AppColors.grayColor : AppColors.grayColor // Change color for disabled button
        ]),
        strokeWidth: 4,
        onTap: disabled ? null : onPress,
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline3!.copyWith(
                fontSize: 16,
                color: disabled ? Colors.grey : textColor, // Change color for disabled button
              ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
