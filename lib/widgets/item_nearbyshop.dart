// ignore_for_file: prefer_const_constructors
//This is the the single card item that gets shown as a tile for a shop
//you tap it to get sent to the corresponding shop profile

import 'package:flutter/material.dart';

class NearbyShopItem extends StatelessWidget {
  //const NearbyShopItem({ Key? key }) : super(key: key);
  final String shopName;
  final String location; 
  
  NearbyShopItem(this.shopName, this.location);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Text(shopName),
    );
  }
}