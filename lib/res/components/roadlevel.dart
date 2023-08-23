// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/color.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class RoadLevelBtn extends StatefulWidget {
  final String title;
  final VoidCallback onPress;
  final Color color;
  final Color textColor;
  final bool disabled;
  final bool hasConnector;

  const RoadLevelBtn({
    Key? key,
    required this.title,
    required this.onPress,
    this.color = AppColors.primaryColor,
    this.textColor = AppColors.primaryTextTextColor,
    this.hasConnector = true,
    this.disabled = false,
  }) : super(key: key);

  @override
  _RoadLevelBtnState createState() => _RoadLevelBtnState();
}

class _RoadLevelBtnState extends State<RoadLevelBtn> {
  Color buttonColor = AppColors.primaryColor;

  @override
  void initState() {
    super.initState();
    buttonColor = widget.disabled ? AppColors.lightGrayColor : widget.color;
  }

  @override
  void didUpdateWidget(RoadLevelBtn oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.disabled != oldWidget.disabled) {
      setState(() {
        buttonColor = widget.disabled ? AppColors.focusUnderLineColor : widget.color;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 300,
      child: OutlineGradientButton(
        gradient: LinearGradient(
          colors: [buttonColor, AppColors.textFieldFocusBorderColor],
        ),
        strokeWidth: 4,
        onTap: widget.disabled ? null : widget.onPress,
        child: Text(
          widget.title,
          style: Theme.of(context).textTheme.headline3!.copyWith(
                fontSize: 16,
                color: widget.textColor,
              ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
