// ignore_for_file: prefer_const_constructors, prefer_final_fields

import 'package:flutter/material.dart';

//Widget Option screens
import '../screens/shop_browser.dart';
import '../screens/user_shop_profile.dart';

class BottomNavBar extends StatefulWidget {
  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 1;

List<Widget> _widgetOptions = [
    UserProfile(),
    ShopBrowser(),
    Text('Settings'),    
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
          index: _selectedIndex,
          children: _widgetOptions,     
        ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black87,
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
          currentIndex: _selectedIndex,
          onTap: _onItemTap,
      ),
    );
  }
}
