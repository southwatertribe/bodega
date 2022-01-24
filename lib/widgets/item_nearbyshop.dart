// ignore_for_file: prefer_const_constructors
//This is the the single card item that gets shown as a tile for a shop
//you tap it to get sent to the corresponding shop profile

import 'package:flutter/material.dart';
import 'package:tester/screens/shop_profile.dart';

class NearbyShopItem extends StatelessWidget {
  //const NearbyShopItem({ Key? key }) : super(key: key);
  final String shopName;
  final String location; 
  
  NearbyShopItem(this.shopName, this.location);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(ShopProfile.routename, arguments: shopName);
      },
      child: Expanded(child: Card(
        child: ListTile(
          leading: Icon(Icons.business),
          title: Text(shopName),
          subtitle: Text(location),
        ),
      )),
    );
  }
}