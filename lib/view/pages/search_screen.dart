import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/searchbar.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 20),
                  child: SearchDelegateClass(), 
                ),),
    );
  }
}
