import 'package:flutter/material.dart';
import '../models/shop.dart';

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
  
  void createShop() {
   // _shops.add(val);
    notifyListeners();
  }
}