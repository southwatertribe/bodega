// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tester/screens/shop_browser.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bodega',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        accentColor: Colors.amber,
      ), 
      home: ShopBrowser(),
    );
  }
}




class NearbyShopsList extends StatefulWidget {
  const NearbyShopsList({ Key? key }) : super(key: key);

  @override
  _NearbyShopsListState createState() => _NearbyShopsListState();
}

class _NearbyShopsListState extends State<NearbyShopsList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}