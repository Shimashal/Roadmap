import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String text;
  final String imageUrl;
  final VoidCallback onTap;

  const CardWidget(
      {super.key,
      required this.text,
      required this.imageUrl,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          // decoration: const BoxDecoration(
          //     image: DecorationImage(
          //         image: AssetImage('assets/images/food_delivery.jpeg'))),
          width: double.infinity,
          height: 140,
          child: Card(
            semanticContainer: true,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            elevation: 30,
            margin: const EdgeInsets.all(10),
            child: Image.asset(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
