// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

//drawer
import '../widgets/user_drawer.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Shop/User Name'),
      ),
      drawer: UserDrawer(),
    );
  }
}