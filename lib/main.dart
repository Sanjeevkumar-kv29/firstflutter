import 'dart:ui';

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

// converted statefull widget coz we want to change some data dynamicaally in text feild
class Homepaget2 extends StatefulWidget {
  @override
  _Homepaget2State createState() => _Homepaget2State();
}

class _Homepaget2State extends State<Homepaget2> {
  var displaytext = 'I love you dude';
  TextEditingController txtcntroler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Scaffold give appbar to us.
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('hello flutter'),
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Card(
              child: Column(
                children: [
                  Image.asset(
                    "assets/img1.jpg",
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 20),
                  Text(displaytext, //'hola lola',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      controller: txtcntroler,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Text feild',
                          labelText: 'textfeild'),
                    ),
                  )
                ],
              ),
            ),
          ),
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
        onPressed: () {
          displaytext = txtcntroler.text;

          setState(() {});
        },
        backgroundColor: Colors.black,
        child: Icon(
          Icons.send,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
