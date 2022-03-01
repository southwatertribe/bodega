// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_field, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tester/models/shop.dart';

//Providers
import '../providers/ShopsProv.dart';

class CreateAShopScreen extends StatefulWidget {
  const CreateAShopScreen({Key? key}) : super(key: key);
  static const routename = '/create-a-shop';
  @override
  _CreateAShopScreenState createState() => _CreateAShopScreenState();
}

class _CreateAShopScreenState extends State<CreateAShopScreen> {
  final _formInfo = GlobalKey<FormState>();
  var _createdShop = Shop(id: '', name: '', location: '', products: []);

  void _submitShop() {
    final isValid = _formInfo.currentState!.validate();
    if (!isValid) {
      return;
    }
    _formInfo.currentState!.save();
    Provider.of<ShopsProv>(context, listen: false).createShop(_createdShop);
    Navigator.of(context).pop();
    //test
    print(_createdShop.name);
    print(_createdShop.location);
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
                        _createdShop = Shop(
                            name: val,
                            id: _createdShop.id,
                            location: _createdShop.location,
                            products: _createdShop.products);
                      }
                    },
                    validator: (val) {
                      if (val!.isEmpty) {
                        return 'Please provide a value';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Address'),
                    textInputAction: TextInputAction.next,
                    onFieldSubmitted: (_) {
                      _submitShop();
                    },
                    validator: (val) {
                      if (val!.isEmpty) {
                        return 'Please provide a value';
                      }
                      return null;
                    },
                    onSaved: (val) {
                      if (val != null) {
                        _createdShop = Shop(
                            name: _createdShop.name,
                            id: _createdShop.id,
                            location: val,
                            products: _createdShop.products);
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
