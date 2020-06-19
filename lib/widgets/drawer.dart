import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('Suvam Prasad'),
            accountEmail: Text('suvamprasad5@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1553798194-cc0213ae7f99?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=751&q=80'),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Suvam Prasad'),
            subtitle: Text('Developer'),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('Contact Me'),
            subtitle: Text('suvamprasad5@gmail.com'),
            trailing: Icon(Icons.edit),
          ),
        ],
      ),
    );
  }
}
