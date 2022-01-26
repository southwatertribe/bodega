// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'widgets/bottom_app_bar.dart';
import 'screens/shop_profile.dart';
//for testing purposes
import 'screens/auth_screen.dart';

import './providers/shops_provider.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
      create: (ctx) => ShopsProv(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Bodega',
        theme: ThemeData(
          brightness: Brightness.dark,
          //backgroundColor: Colors.black87,
        ), 
        home: AuthScreen(),
        routes: {
          ShopProfile.routename: (ctx) => ShopProfile(),
        },
      ),
    );
  }
}
