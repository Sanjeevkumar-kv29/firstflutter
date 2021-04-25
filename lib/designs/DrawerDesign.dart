import 'package:flutter/material.dart';

// when we want to make changes into run time then we are making statefull wiedges and when we want to make static content
// we make it in stateless wiedge....abstract

class DrawerDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          /*DrawerHeader(
              child: Text('hello'),
              decoration: BoxDecoration(color: Colors.grey),
            ),*/
          UserAccountsDrawerHeader(
            accountName: Text('name'),
            accountEmail: Text('email@email.email'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://netstorage-legit.akamaized.net/images/vllkyt1uc3jd8n61v8.jpg'),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('niceflutter'),
            subtitle: Text('hola hola hola'),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
