//This page is pushed when you tap on a shop tile

import 'package:flutter/material.dart';

class ShopProfile extends StatelessWidget {
  //const ShopProfile({ Key? key }) : super(key: key);
  final String shopName;
  final String location;

  ShopProfile(this.shopName, this.location);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Should correspond to tapped shop'),
      ),
    );
  }
}