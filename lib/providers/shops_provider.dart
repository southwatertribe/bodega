import 'package:flutter/material.dart';
import '../models/shop.dart';

//Data
import '../DUMMDATA.dart';

class ShopsProv with ChangeNotifier{
  final List<Shop> _shops = DUMMY_SHOPS;
  List<Shop> get shops {
    return [..._shops];
  }

  void createShop() {
   // _shops.add(val);
    notifyListeners();
  }
}