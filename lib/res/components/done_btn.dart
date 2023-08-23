import 'package:flutter/material.dart';
import 'package:map_app_task/res/color.dart';

class DoneBtn extends StatelessWidget {
  final String title;
  final VoidCallback? onPress;
  final Color color, textColor;
  final bool disabled;

  const DoneBtn({
    Key? key,
    required this.title,
    this.onPress,
    this.textColor = AppColors.primaryTextTextColor,
    this.color = AppColors.primaryColor,
    required this.disabled,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: disabled ? null : onPress,
      child: Container(
        height: 50,
        width: 380,
        decoration: BoxDecoration(
          color: disabled ? Colors.grey : color,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Center(
          child: Text(
            title,
            style: Theme.of(context).textTheme.displayMedium!.copyWith(fontSize: 16, color: textColor),
          ),
        ),
      ),
    );
  }
}
