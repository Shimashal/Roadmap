// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class GitL5 extends StatefulWidget {
  const GitL5({super.key});

  @override
  State<GitL5> createState() => _GitL5State();
}

class _GitL5State extends State<GitL5> {
  Future<void> _launchUrl(String url) async {
    await LaunchUrl.launchUrl(url);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0, 
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text("Git", style: Theme.of(context).textTheme.headline1),
            
            const SizedBox(
              height: 10, 
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Git is a free and open source distributed version control system designed to handle everything from small to very large projects with speed and efficiency. Visit the following resources to learn more:",
                style: Theme.of(context).textTheme.subtitle1,
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
             LaunchUrl.buildLink(
              context,
              "Git & GitHub Crash Course For Beginners",
              "https://www.youtube.com/watch?v=SWYqp7iY_Tc&ab_channel=TraversyMedia",
            ),
            const SizedBox(
              height: 20,
            ),
             LaunchUrl.buildLink(
              context,
              "Learn Git with Tutorials, News and Tips - Atlassian",
              "https://www.atlassian.com/git",
            ),
            const SizedBox(
              height: 20,
            ),
             LaunchUrl.buildLink(
              context,
              "Git Cheat Sheet",
              "https://cs.fyi/guide/git-cheatsheet",
            ),
          ],
        ),
      ),
    );
  }
}
