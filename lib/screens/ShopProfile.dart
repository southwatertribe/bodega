//This page is pushed when you tap on a shop tile

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tester/providers/ShopsProv.dart';

class ShopProfile extends StatelessWidget {
  //const ShopProfile({ Key? key }) : super(key: key);
  static const routename = '/shop-profile';
  @override
  Widget build(BuildContext context) {
    final shopName = ModalRoute.of(context)!.settings.arguments as String;
    final loadedShops = Provider.of<ShopsProv>(context).findByName(shopName);
    return Scaffold(
      appBar: AppBar(
        title: Text(loadedShops.name),
      ),
    );
  }
}
