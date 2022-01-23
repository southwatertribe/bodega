//This is the widget that lists the returned shop titles
//This should be recieving from the nearby item shop

// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:tester/widgets/item_nearbyshop.dart';
import '../DUMMDATA.dart';

class NearbyShopsList extends StatelessWidget {
  const NearbyShopsList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        itemCount: DUMMY_SHOPS.length,
        itemBuilder: (context, index) => NearbyShopItem(DUMMY_SHOPS[index].name,DUMMY_SHOPS[index].location),
      )
    );
  }
}