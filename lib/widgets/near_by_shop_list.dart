//This is the widget that lists the returned shop titles
//This should be recieving from the nearby item shop

// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:tester/providers/shops_provider.dart';
import 'package:tester/widgets/item_nearbyshop.dart';
import 'package:provider/provider.dart';

class NearbyShopsList extends StatelessWidget {
  const NearbyShopsList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Provider.of<ShopsProv>(context);
    final shopsData = Provider.of<ShopsProv>(context);
    final shops = shopsData.shops;
    return Container(
      height: 300,
      child: ListView.builder(
        itemCount: shops.length,
        itemBuilder: (context, index) => NearbyShopItem(shops[index].name,shops[index].location),
      )
    );
  }
}