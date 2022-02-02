// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_field, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:tester/models/shop.dart';

class CreateAShopScreen extends StatefulWidget {
  const CreateAShopScreen({ Key? key }) : super(key: key);
  static const routename = '/create-a-shop';
  @override
  _CreateAShopScreenState createState() => _CreateAShopScreenState();
}

class _CreateAShopScreenState extends State<CreateAShopScreen> {
  
  final _formInfo = GlobalKey<FormState>();
  var _editedShop = Shop(
    id: '', 
    name: '', 
    location: '', 
    products: []
    );

  void _submitShop() {
    
    _formInfo.currentState!.save();
    //test
    print(_editedShop.name);
    print(_editedShop.location);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Build-A-Shop'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formInfo,
          child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Shop Name'),
                textInputAction: TextInputAction.next,
                onSaved: (val) {
                  if (val != null) {
                    _editedShop = Shop(name: val, id: _editedShop.id, location: _editedShop.location, products: _editedShop.products);
                  }
                }
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Address'),
                textInputAction: TextInputAction.next,
                onFieldSubmitted: (_) {
                  _submitShop();
                },
                onSaved: (val) {
                  if (val != null) {
                    _editedShop = Shop(name: _editedShop.name, id: _editedShop.id, location: val, products: _editedShop.products);
                  }
                },
              ),
            ],
          ),
        )),
      ),
    );
  }
}