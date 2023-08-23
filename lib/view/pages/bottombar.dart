import 'package:flutter/material.dart';
import 'package:map_app_task/res/color.dart';

import 'home_page.dart';
import 'profile_screen.dart';
import 'search_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    const SearchScreen(),
    const ProfileScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: _onItemTapped,
          currentIndex: _selectedIndex,
          elevation: 10,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.blueGrey,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled,
                color: AppColors.primaryColor,),
                activeIcon: Icon(Icons.home_filled),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.search,
                color: AppColors.primaryColor,),
                activeIcon: Icon(Icons.search),
                label: "Explore"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_2,
                color: AppColors.primaryColor,),
                activeIcon: Icon(Icons.person_2),
                label: "Profile"),
          ]),
    );
  }
}
