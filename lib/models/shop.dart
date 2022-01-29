// ignore: todo
//Data model for shop TODO:Recieve this data from a database 
import 'package:flutter/material.dart';
import 'product.dart';

//Shop is now also a provider
class Shop with ChangeNotifier {
  final String id;
  final String name;
  final String location;
  final List<Product> products;
  Shop({required this.name, required this.location, required this.products, required this.id});

}