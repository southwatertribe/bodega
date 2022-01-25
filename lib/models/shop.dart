// ignore: todo
//Data model for shop TODO:Recieve this data from a database 
import 'package:flutter/material.dart';
import 'product.dart';

class Shop {
  final String name;
  final String location;
  final List<Product> products;
  const Shop({required this.name, required this.location, required this.products});

}