import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LaunchUrl {
 
  static Future<void> launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launch(url)) {
      throw Exception('Could not launch $url');
    }
  }

  static Widget buildLink(BuildContext context, String title, String url) {
    return  Align(
    alignment: Alignment.centerLeft,
    child: GestureDetector(
      onTap: () {
        launchUrl(url);
      },
      child: Text(
        title,
        style: Theme.of(context).textTheme.displayMedium!.copyWith(
          fontSize: 15,
          decoration: TextDecoration.underline,
        ),
      ),
    ),
  );
}
}
