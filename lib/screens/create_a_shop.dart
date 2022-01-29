import 'package:flutter/material.dart';

class CreateAShopScreen extends StatefulWidget {
  const CreateAShopScreen({ Key? key }) : super(key: key);
  static const routename = '/create-a-shop';
  @override
  _CreateAShopScreenState createState() => _CreateAShopScreenState();
}

class _CreateAShopScreenState extends State<CreateAShopScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Build-A-Shop'),
      ),
    );
  }
}