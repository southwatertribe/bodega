// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/shop_browser.dart';
import 'widgets/bottom_app_bar.dart';
import 'screens/shop_profile.dart';

import './providers/shops_provider.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => ShopsProv(),
      child: MaterialApp(
        title: 'Bodega',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          accentColor: Colors.amber,
        ), 
        home: BottomNavBar(),
        routes: {
          ShopProfile.routename: (ctx) => ShopProfile(),
        },
      ),
    );
  }
}
