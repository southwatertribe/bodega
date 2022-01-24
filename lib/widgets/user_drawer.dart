import 'package:flutter/material.dart';

class UserDrawer extends StatelessWidget {
  const UserDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            title: const Text('Edit Your Profile'),
            automaticallyImplyLeading: false,
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.add_business),
            title: const Text('Add a product'),
            onTap: () => {
              //Will be sent to add product form
            },
          ),
        ],
      ),
    );
  }
}