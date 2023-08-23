// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import '../../res/color.dart';

class MyTextField extends StatelessWidget {
  final String name;
  final TextEditingController controller;
  final String hintText;
  final IconData? icon;
  final TextInputType? keyboardType;
  final bool obsecureText;
  const MyTextField(
      {super.key,
      required this.name,
      required this.controller,
      required this.hintText,
      required this.icon,
      required this.keyboardType,
      this.obsecureText = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
      child: TextFormField(
        obscureText: obsecureText,
        keyboardType: keyboardType,
        controller: controller,
        decoration: InputDecoration(
          // labelText: name,
          // labelStyle: const TextStyle(
          //     color: Colors.red, fontWeight: FontWeight.bold),
          prefixIcon: icon != null ? Icon(icon) : null,
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(12)),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: AppColors.primaryColor),
              borderRadius: BorderRadius.circular(12)),
          hintText: hintText,
          // hintStyle: GoogleFonts.raleway(
          //   textStyle: Theme.of(context).textTheme.headlineMedium,
          //   fontSize: 15,
          //   color: Colors.black54,
          //   //fontWeight: FontWeight.w900,
          //   fontStyle: FontStyle.normal,
          // ),
          hintStyle: Theme.of(context).textTheme.subtitle1,
          filled: true,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          fillColor: Colors.grey[200],
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return hintText;
          }
          if (name.toLowerCase() == 'phone' && value.length != 11) {
            return 'Please enter a valid 11-digit phone number';
          }
          return null;
        },
      ),
    );
  }
}
