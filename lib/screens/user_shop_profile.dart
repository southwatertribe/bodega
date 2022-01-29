// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

//This will show a button to add a shop if auth user does not have one registerd
//Button will send to create shop form
//If user has a shop created, then this will show their shop

//Future: add orders, followers, etc
//Navigator.of(context).pushNamed(ShopProfile.routename, arguments: shopName);
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/shops_provider.dart';
import 'create_a_shop.dart';

//drawer
import '../widgets/user_drawer.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
  final shopsData = Provider.of<ShopsProv>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('User Shop/User Name'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              child: Text('You Dont Have A Shop Yet'),
            ),
             Container(
              child: TextButton(onPressed: () {
                Navigator.of(context).pushNamed(CreateAShopScreen.routename);
              }, child: Text('Create Your Shop!'),
              ),
            ),          
          ],
        ),
      ),
      drawer: UserDrawer(),
    );
  }
}