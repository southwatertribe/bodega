//This is the widget that lists the returned shop titles
//This should be recieving from the nearby item shop

import 'package:flutter/material.dart';
import 'package:tester/widgets/item_nearbyshop.dart';
import '../DUMMDATA.dart';

class NearbyShopsList extends StatefulWidget {
  const NearbyShopsList({ Key? key }) : super(key: key);

  @override
  _NearbyShopsListState createState() => _NearbyShopsListState();
}

class _NearbyShopsListState extends State<NearbyShopsList> {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView(
      children: DUMMY_SHOPS.map((shopData) => NearbyShopItem(
        shopData.name,
        shopData.location
        )).toList(),
      ),
    );
  }
}