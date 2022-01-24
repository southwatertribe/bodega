import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  /* const BottomNavBar({this.selectedIndex = 0, required this.onTap});
  
  final int selectedIndex;
  final void Function(int) onTap; */
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      //onTap: (index)=> currentIndex = index,
      items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_rounded),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: 'Shop Browser',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        /* currentIndex: selectedIndex,
        onTap: onTap, */
    );
  }
}