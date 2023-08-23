// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/color.dart';

class InputField extends StatefulWidget {
  const InputField({
    Key? key,
    required this.hint,
    required this.myController,
    required this.focusNode,
    required this.onFiledSubmittedValue,
    required this.onValidator,
    required this.keyBoardType,
    required this.obscureText,
    this.autoFocus = false,
    this.enable = true,
    this.showPasswordToggle = true,
     this.prefixIcon,
  }) : super(key: key);

  final TextEditingController myController;
  final FocusNode focusNode;
  final FormFieldSetter onFiledSubmittedValue;
  final FormFieldValidator onValidator;
  final TextInputType keyBoardType;
  final String hint;
  final bool obscureText;
  final bool enable;
  final bool autoFocus;
  final bool showPasswordToggle;
  final IconData? prefixIcon;

  @override
  _InputFieldState createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: TextFormField(
        controller: widget.myController,
        focusNode: widget.focusNode,
        onFieldSubmitted: widget.onFiledSubmittedValue,
        validator: widget.onValidator,
        keyboardType: widget.keyBoardType,
        style: Theme.of(context).textTheme.bodyText2!.copyWith(height: 0, fontSize: 19),
        obscureText: widget.obscureText && !_isPasswordVisible,
        decoration: InputDecoration(
          prefixIcon: widget.prefixIcon != null ? Icon(widget.prefixIcon) : null,
          enabled: widget.enable,
          hintText: widget.hint,
          contentPadding: const EdgeInsets.all(12),
          hintStyle: Theme.of(context).textTheme.bodyText2!.copyWith(height: 0, color: AppColors.primaryTextTextColor.withOpacity(0.8)),
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.textFieldDefaultFocus),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.secondaryColor),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.alertColor),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.textFieldDefaultBorderColor),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          suffixIcon: widget.obscureText && widget.showPasswordToggle
              ? IconButton(
                  icon: Icon(
                    _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                    color: AppColors.primaryTextTextColor.withOpacity(0.8),
                  ),
                  onPressed: () {
                    setState(() {
                      _isPasswordVisible = !_isPasswordVisible;
                    });
                  },
                )
              : null,
        ),
      ),
    );
  }
}
