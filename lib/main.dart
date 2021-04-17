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
      child: Text('tatti'),
    );
  }
}

class Homepaget2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Scaffold give appbar to us so we use it for appbar
      appBar: AppBar(
        title: Text('tattiflutter'),
      ),
      body: Container(
        child: Text('TattiXD'),
      ),
    );
  }
}
