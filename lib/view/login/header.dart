import 'package:flutter/material.dart';
import 'package:map_app_task/res/color.dart';

// ignore: must_be_immutable
class HeaderContainer extends StatefulWidget {
  var text = "Login";

  HeaderContainer(this.text, {super.key});

  @override
  State<HeaderContainer> createState() => _HeaderContainerState();
}

class _HeaderContainerState extends State<HeaderContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [AppColors.primaryColor, AppColors.secondaryColor],
              end: Alignment.bottomCenter,
              begin: Alignment.topCenter),
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(100))),
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 20,
              left: 20,
              child: Text(
            widget.text,
            style: const TextStyle(color: Color.fromARGB(255, 228, 225, 225),fontSize: 25),
          )),
          Center(
            child: Image.asset("assets/images/education.png"),
          ),
        ],
      ),
    );
  }
}