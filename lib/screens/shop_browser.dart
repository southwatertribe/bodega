// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../widgets/near_by_shop_list.dart';




class ShopBrowser extends StatelessWidget {
  const ShopBrowser({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: Text('BODEGA'),
      ),
      body: Column(
        children: [
          Expanded(child: TextFormField(
            //controller: _searchController,
            textCapitalization: TextCapitalization.words,
            decoration: InputDecoration(hintText: 'Select A Location'),
          )),
          NearbyShopsList(),
        ],
      ),
    );
  }
}