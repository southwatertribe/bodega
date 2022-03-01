import 'dart:convert';

import 'package:flutter/material.dart';
import '../models/shop.dart';
import 'package:http/http.dart' as http;
import 'package:convert/convert.dart';

//Data
import '../DUMMDATA.dart';

class ShopsProv with ChangeNotifier{
  final List<Shop> _shops = DUMMY_SHOPS;
  List<Shop> get shops {
    return [..._shops];
  }

  //Finds the shop item given the name
  Shop findByName(String name) {
    return _shops.firstWhere((shop)=> shop.name == name);
  }
  
  void createShop(Shop shop) {
    final url = Uri.parse('https://bodega-22cd9-default-rtdb.firebaseio.com/shops.json');
    http.post(url, body: jsonEncode({
      'shopID': shop.id,
      'shopName': shop.name,
      'location': shop.location,
      'products': shop.products,
    }),).then((res) {
        final newShop = Shop(
      id: shop.id,
      name: shop.name,
      location: shop.location,
      products: shop.products
    );
    _shops.add(newShop);
     notifyListeners();
    });
    
   
  }
}