// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tester/screens/CreateAShopScreen.dart';
import 'widgets/BottomNavBar.dart';
import 'screens/ShopProfile.dart';
//for testing purposes
import 'screens/AuthScreen.dart';

import 'providers/ShopsProv.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => ShopsProv(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Bodega',
        theme: ThemeData(
          brightness: Brightness.dark,
          //backgroundColor: Colors.black87,
        ),
        home: BottomNavBar(),
        routes: {
          ShopProfile.routename: (ctx) => ShopProfile(),
          CreateAShopScreen.routename: (ctx) => CreateAShopScreen(),
        },
      ),
    );
  }
}
