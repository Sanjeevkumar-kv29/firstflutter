import 'package:flutter/material.dart';

void main() {
  //WidgetApp MaterialApp CupertinoApp
  runApp(MaterialApp(
    home: Homepaget2(),
    theme: ThemeData(primarySwatch: Colors.grey),

    /*home: Container(
      color: Colors.teal,
      child: Text('lolo flutter'),
    ),*/
  ));
}

class Homepaget1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Text('hello flutter'),
    );
  }
}

class Homepaget2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Scaffold give appbar to us.
      appBar: AppBar(
        title: Text('hello flutter'),
      ),

      body: Center(
        child: Container(
          width: 100,
          height: 100,
          color: Colors.teal,
        ),
      ),

      drawer: Drawer(
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
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black,
        child: Icon(
          Icons.search,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
