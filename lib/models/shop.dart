/* import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:async/async.dart'; */

/* Future<Shop> fetchShop() async {
  final response = await http.get('url');
  if (response.statusCode == 200) {
    return Shop.fromJson(json.decode(response.body));
  } else {
    throw Exception("Failed to load shop")
  }
} */
// ignore: todo
//Data model for shop TODO:Recieve this data from a database 
class Shop {
  final String name;
  final String location;

  const Shop({required this.name, required this.location});

  /* factory Shop.fromJson(Map<String, dynamic> json) {
    return Shop(name: json['name'], location: json['location'])
  } */
}